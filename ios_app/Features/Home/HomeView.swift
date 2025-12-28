// ios_app/Features/Home/HomeView.swift

import SwiftUI

struct HomeView: View {
    @StateObject private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    // Daily Verse Card
                    if let verse = viewModel.dailyVerse {
                        DailyVerseCard(verse: verse)
                    } else if viewModel.isLoading {
                        DailyVerseCard.placeholder
                    }

                    // Featured Scenario
                    if let scenario = viewModel.featuredScenario {
                        FeaturedScenarioCard(scenario: scenario)
                    }

                    // Quick Actions
                    QuickActionsSection()
                }
                .padding()
            }
            .navigationTitle("Gospel Wisdom")
            .refreshable {
                await viewModel.refresh()
            }
            .task {
                await viewModel.loadData()
            }
        }
    }
}

// MARK: - Daily Verse Card

struct DailyVerseCard: View {
    let verse: Verse

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundStyle(.orange)
                Text("Verse of the Day")
                    .font(.headline)
                Spacer()
            }

            Text(verse.text)
                .font(.body)
                .italic()

            if let book = verse.book, let chapter = verse.chapter {
                Text("— \(book) \(chapter):\(verse.verseNumber)")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }

    static var placeholder: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundStyle(.orange)
                Text("Verse of the Day")
                    .font(.headline)
                Spacer()
            }
            Text("Loading...")
                .font(.body)
                .redacted(reason: .placeholder)
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

// MARK: - Featured Scenario Card

struct FeaturedScenarioCard: View {
    let scenario: Scenario

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "lightbulb.fill")
                    .foregroundStyle(.yellow)
                Text("Life Dilemma")
                    .font(.headline)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.secondary)
            }

            Text(scenario.title)
                .font(.title3)
                .fontWeight(.semibold)

            Text(scenario.description)
                .font(.body)
                .foregroundStyle(.secondary)
                .lineLimit(3)

            Button("Get Guidance") {
                // Navigate to scenario detail
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

// MARK: - Quick Actions Section

struct QuickActionsSection: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Explore")
                .font(.headline)

            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())
            ], spacing: 16) {
                QuickActionButton(
                    title: "Chapters",
                    icon: "book.fill",
                    color: .blue
                )
                QuickActionButton(
                    title: "Dilemmas",
                    icon: "lightbulb.fill",
                    color: .orange
                )
                QuickActionButton(
                    title: "Bookmarks",
                    icon: "bookmark.fill",
                    color: .purple
                )
                QuickActionButton(
                    title: "Search",
                    icon: "magnifyingglass",
                    color: .green
                )
            }
        }
    }
}

struct QuickActionButton: View {
    let title: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: icon)
                .font(.title2)
                .foregroundStyle(color)

            Text(title)
                .font(.caption)
                .fontWeight(.medium)
        }
        .frame(maxWidth: .infinity)
        .padding()
        .background(.ultraThinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

// MARK: - View Model

@MainActor
class HomeViewModel: ObservableObject {
    @Published var dailyVerse: Verse?
    @Published var featuredScenario: Scenario?
    @Published var isLoading = false
    @Published var error: Error?

    func loadData() async {
        isLoading = true
        defer { isLoading = false }

        do {
            let response = try await FlutterBridge.shared.getDailyVerse()
            dailyVerse = response.verse
        } catch {
            self.error = error
            print("❌ Failed to load daily verse: \(error)")
        }
    }

    func refresh() async {
        await loadData()
    }
}

#Preview {
    HomeView()
}
