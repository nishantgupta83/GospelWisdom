// ios_app/App/GospelWisdomApp.swift
//
// Gospel Wisdom - Native SwiftUI App
// Uses Flutter engine as headless business logic layer

import SwiftUI

@main
struct GospelWisdomApp: App {
    // Initialize Flutter engine at app launch
    @StateObject private var flutterManager = FlutterEngineManager.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(flutterManager)
                .task {
                    // Ensure Flutter engine is ready
                    await flutterManager.ensureEngineReady()
                }
        }
    }
}

// MARK: - Main Content View with Tab Navigation

struct ContentView: View {
    @State private var selectedTab: Tab = .home

    enum Tab: String, CaseIterable {
        case home = "Home"
        case chapters = "Chapters"
        case scenarios = "Dilemmas"
        case journal = "Journal"
        case settings = "More"

        var icon: String {
            switch self {
            case .home: return "house.fill"
            case .chapters: return "book.fill"
            case .scenarios: return "lightbulb.fill"
            case .journal: return "note.text"
            case .settings: return "gearshape.fill"
            }
        }
    }

    var body: some View {
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    Label(Tab.home.rawValue, systemImage: Tab.home.icon)
                }
                .tag(Tab.home)

            ChaptersView()
                .tabItem {
                    Label(Tab.chapters.rawValue, systemImage: Tab.chapters.icon)
                }
                .tag(Tab.chapters)

            ScenariosView()
                .tabItem {
                    Label(Tab.scenarios.rawValue, systemImage: Tab.scenarios.icon)
                }
                .tag(Tab.scenarios)

            JournalView()
                .tabItem {
                    Label(Tab.journal.rawValue, systemImage: Tab.journal.icon)
                }
                .tag(Tab.journal)

            SettingsView()
                .tabItem {
                    Label(Tab.settings.rawValue, systemImage: Tab.settings.icon)
                }
                .tag(Tab.settings)
        }
        .tint(.blue)
    }
}

#Preview {
    ContentView()
}
