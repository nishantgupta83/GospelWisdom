// ios_app/Features/Journal/JournalView.swift

import SwiftUI

struct JournalView: View {
    @StateObject private var viewModel = JournalViewModel()
    @State private var showNewEntry = false

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.entries.isEmpty && !viewModel.isLoading {
                    EmptyJournalView(showNewEntry: $showNewEntry)
                } else {
                    List {
                        ForEach(viewModel.entries) { entry in
                            JournalEntryRow(entry: entry)
                        }
                        .onDelete(perform: viewModel.deleteEntries)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Reflections")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button {
                        showNewEntry = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .refreshable {
                await viewModel.loadData()
            }
            .task {
                await viewModel.loadData()
            }
            .sheet(isPresented: $showNewEntry) {
                NewJournalEntryView { entry in
                    Task {
                        await viewModel.saveEntry(entry)
                        showNewEntry = false
                    }
                }
            }
        }
    }
}

// MARK: - Empty State

struct EmptyJournalView: View {
    @Binding var showNewEntry: Bool

    var body: some View {
        ContentUnavailableView {
            Label("No Reflections Yet", systemImage: "note.text")
        } description: {
            Text("Tap the + button to create your first reflection")
        } actions: {
            Button("Add Reflection") {
                showNewEntry = true
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

// MARK: - Entry Row

struct JournalEntryRow: View {
    let entry: JournalEntry

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(entry.category)
                    .font(.caption)
                    .padding(.horizontal, 8)
                    .padding(.vertical, 4)
                    .background(.blue.opacity(0.1))
                    .foregroundStyle(.blue)
                    .clipShape(Capsule())

                Spacer()

                if entry.rating > 0 {
                    HStack(spacing: 2) {
                        ForEach(1...5, id: \.self) { star in
                            Image(systemName: star <= entry.rating ? "star.fill" : "star")
                                .font(.caption2)
                                .foregroundStyle(star <= entry.rating ? .yellow : .gray.opacity(0.3))
                        }
                    }
                }
            }

            Text(entry.content)
                .font(.body)
                .lineLimit(3)

            if let createdAt = entry.createdAt {
                Text(formatDate(createdAt))
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(.vertical, 8)
    }

    private func formatDate(_ dateString: String) -> String {
        // Simple date formatting
        let formatter = ISO8601DateFormatter()
        if let date = formatter.date(from: dateString) {
            let displayFormatter = DateFormatter()
            displayFormatter.dateStyle = .medium
            return displayFormatter.string(from: date)
        }
        return dateString
    }
}

// MARK: - New Entry Sheet

struct NewJournalEntryView: View {
    let onSave: (JournalEntry) -> Void

    @Environment(\.dismiss) private var dismiss
    @State private var content = ""
    @State private var category = "General"
    @State private var rating = 0

    let categories = ["General", "Personal Growth", "Meditation", "Daily Reflection", "Dilemma", "Chapter Insights"]

    var body: some View {
        NavigationStack {
            Form {
                Section("Your Reflection") {
                    TextEditor(text: $content)
                        .frame(minHeight: 150)
                }

                Section("Category") {
                    Picker("Category", selection: $category) {
                        ForEach(categories, id: \.self) { cat in
                            Text(cat).tag(cat)
                        }
                    }
                    .pickerStyle(.menu)
                }

                Section("Rating") {
                    HStack {
                        ForEach(1...5, id: \.self) { star in
                            Button {
                                rating = star
                            } label: {
                                Image(systemName: star <= rating ? "star.fill" : "star")
                                    .font(.title2)
                                    .foregroundStyle(star <= rating ? .yellow : .gray.opacity(0.3))
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationTitle("New Reflection")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") {
                        let entry = JournalEntry(
                            content: content,
                            category: category,
                            rating: rating
                        )
                        onSave(entry)
                    }
                    .disabled(content.isEmpty)
                }
            }
        }
    }
}

// MARK: - View Model

@MainActor
class JournalViewModel: ObservableObject {
    @Published var entries: [JournalEntry] = []
    @Published var isLoading = false
    @Published var error: Error?

    func loadData() async {
        isLoading = true
        defer { isLoading = false }

        do {
            let response = try await FlutterBridge.shared.listJournalEntries()
            entries = response.entries
        } catch {
            self.error = error
            print("❌ Failed to load journal: \(error)")
        }
    }

    func saveEntry(_ entry: JournalEntry) async {
        do {
            _ = try await FlutterBridge.shared.saveJournalEntry(entry)
            await loadData()
        } catch {
            self.error = error
            print("❌ Failed to save entry: \(error)")
        }
    }

    func deleteEntries(at offsets: IndexSet) {
        Task {
            for index in offsets {
                if let id = entries[index].id {
                    try? await FlutterBridge.shared.deleteJournalEntry(entryId: id)
                }
            }
            await loadData()
        }
    }
}

#Preview {
    JournalView()
}
