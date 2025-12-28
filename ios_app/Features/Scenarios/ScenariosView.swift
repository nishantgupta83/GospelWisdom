// ios_app/Features/Scenarios/ScenariosView.swift

import SwiftUI

struct ScenariosView: View {
    @StateObject private var viewModel = ScenariosViewModel()
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            List {
                ForEach(filteredScenarios) { scenario in
                    NavigationLink {
                        ScenarioDetailView(scenario: scenario)
                    } label: {
                        ScenarioRow(scenario: scenario)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Life Dilemmas")
            .searchable(text: $searchText, prompt: "Search dilemmas...")
            .refreshable {
                await viewModel.loadData()
            }
            .task {
                await viewModel.loadData()
            }
            .overlay {
                if viewModel.isLoading && viewModel.scenarios.isEmpty {
                    ProgressView("Loading...")
                }
            }
        }
    }

    var filteredScenarios: [Scenario] {
        if searchText.isEmpty {
            return viewModel.scenarios
        }
        return viewModel.scenarios.filter {
            $0.title.localizedCaseInsensitiveContains(searchText) ||
            $0.description.localizedCaseInsensitiveContains(searchText)
        }
    }
}

// MARK: - Scenario Row

struct ScenarioRow: View {
    let scenario: Scenario

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(scenario.title)
                .font(.headline)

            Text(scenario.description)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)

            if let tags = scenario.tags, !tags.isEmpty {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        ForEach(tags.prefix(3), id: \.self) { tag in
                            Text(tag)
                                .font(.caption2)
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(.blue.opacity(0.1))
                                .foregroundStyle(.blue)
                                .clipShape(Capsule())
                        }
                    }
                }
            }
        }
        .padding(.vertical, 8)
    }
}

// MARK: - Scenario Detail View

struct ScenarioDetailView: View {
    let scenario: Scenario
    @State private var showGuidance = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                // Title & Description
                VStack(alignment: .leading, spacing: 12) {
                    Text(scenario.title)
                        .font(.title2)
                        .fontWeight(.bold)

                    Text(scenario.description)
                        .font(.body)
                }

                // Get Guidance Button
                if !showGuidance {
                    Button {
                        withAnimation {
                            showGuidance = true
                        }
                    } label: {
                        Label("Get Guidance", systemImage: "lightbulb.fill")
                            .frame(maxWidth: .infinity)
                    }
                    .buttonStyle(.borderedProminent)
                    .controlSize(.large)
                }

                // Guidance Sections
                if showGuidance {
                    // Heart Says
                    if let heartSays = scenario.heartSays {
                        GuidanceCard(
                            title: "Heart Says",
                            icon: "heart.fill",
                            color: .pink,
                            content: heartSays
                        )
                    }

                    // Duty Says
                    if let dutySays = scenario.dutySays {
                        GuidanceCard(
                            title: "Duty Says",
                            icon: "shield.fill",
                            color: .blue,
                            content: dutySays
                        )
                    }

                    // Wisdom Steps
                    if let steps = scenario.wisdomSteps, !steps.isEmpty {
                        WisdomStepsCard(steps: steps)
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Life Dilemma")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Guidance Card

struct GuidanceCard: View {
    let title: String
    let icon: String
    let color: Color
    let content: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: icon)
                    .foregroundStyle(color)
                Text(title)
                    .font(.headline)
            }

            Text(content)
                .font(.body)
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(color.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - Wisdom Steps Card

struct WisdomStepsCard: View {
    let steps: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "list.number")
                    .foregroundStyle(.green)
                Text("Wisdom Steps")
                    .font(.headline)
            }

            ForEach(Array(steps.enumerated()), id: \.offset) { index, step in
                HStack(alignment: .top, spacing: 12) {
                    Text("\(index + 1)")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .frame(width: 24, height: 24)
                        .background(.green)
                        .clipShape(Circle())

                    Text(step)
                        .font(.body)
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.green.opacity(0.1))
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - View Model

@MainActor
class ScenariosViewModel: ObservableObject {
    @Published var scenarios: [Scenario] = []
    @Published var isLoading = false
    @Published var error: Error?

    func loadData() async {
        isLoading = true
        defer { isLoading = false }

        do {
            let response = try await FlutterBridge.shared.listScenarios()
            scenarios = response.scenarios
        } catch {
            self.error = error
            print("❌ Failed to load scenarios: \(error)")
        }
    }
}

#Preview {
    ScenariosView()
}
