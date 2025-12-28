// ios_app/Features/Chapters/ChaptersView.swift

import SwiftUI

struct ChaptersView: View {
    @StateObject private var viewModel = ChaptersViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(viewModel.books) { book in
                    Section {
                        ForEach(viewModel.chapters(for: book.id)) { chapter in
                            ChapterRow(chapter: chapter)
                        }
                    } header: {
                        BookHeader(book: book)
                    }
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Gospel Books")
            .refreshable {
                await viewModel.loadData()
            }
            .task {
                await viewModel.loadData()
            }
            .overlay {
                if viewModel.isLoading && viewModel.books.isEmpty {
                    ProgressView("Loading...")
                }
            }
        }
    }
}

// MARK: - Book Header

struct BookHeader: View {
    let book: Book

    var body: some View {
        HStack {
            Image(systemName: "book.fill")
                .foregroundStyle(.blue)
            Text(book.name)
                .font(.headline)
            Spacer()
            Text("\(book.chapterCount) chapters")
                .font(.caption)
                .foregroundStyle(.secondary)
        }
    }
}

// MARK: - Chapter Row

struct ChapterRow: View {
    let chapter: Chapter

    var body: some View {
        NavigationLink {
            ChapterDetailView(chapter: chapter)
        } label: {
            VStack(alignment: .leading, spacing: 4) {
                Text("Chapter \(chapter.chapterNumber)")
                    .font(.headline)

                if !chapter.title.isEmpty {
                    Text(chapter.title)
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }

                HStack(spacing: 16) {
                    Label("\(chapter.verseCount)", systemImage: "text.quote")
                    Label("\(chapter.scenarioCount)", systemImage: "lightbulb")
                }
                .font(.caption)
                .foregroundStyle(.tertiary)
            }
            .padding(.vertical, 4)
        }
    }
}

// MARK: - Chapter Detail View (Placeholder)

struct ChapterDetailView: View {
    let chapter: Chapter

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(chapter.title)
                    .font(.title)

                if let summary = chapter.summary {
                    Text(summary)
                        .font(.body)
                }

                // Verses will be loaded here
                Text("Verses coming soon...")
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .navigationTitle("Chapter \(chapter.chapterNumber)")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - View Model

@MainActor
class ChaptersViewModel: ObservableObject {
    @Published var books: [Book] = []
    @Published var chaptersMap: [String: [Chapter]] = [:]
    @Published var isLoading = false
    @Published var error: Error?

    func loadData() async {
        isLoading = true
        defer { isLoading = false }

        do {
            let response = try await FlutterBridge.shared.listBooks()
            books = response.books

            // Load chapters for each book
            for book in books {
                let chaptersResponse = try await FlutterBridge.shared.listChapters(bookId: book.id)
                chaptersMap[book.id] = chaptersResponse.chapters
            }
        } catch {
            self.error = error
            print("❌ Failed to load chapters: \(error)")
        }
    }

    func chapters(for bookId: String) -> [Chapter] {
        chaptersMap[bookId] ?? []
    }
}

#Preview {
    ChaptersView()
}
