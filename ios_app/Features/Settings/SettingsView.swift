// ios_app/Features/Settings/SettingsView.swift

import SwiftUI

struct SettingsView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("themeStyle") private var themeStyle = "light"
    @StateObject private var viewModel = SettingsViewModel()

    var body: some View {
        NavigationStack {
            Form {
                // Appearance Section
                Section("Appearance") {
                    Toggle("Dark Mode", isOn: $isDarkMode)

                    Picker("Theme Style", selection: $themeStyle) {
                        Text("Light").tag("light")
                        Text("Dark").tag("dark")
                        Text("Lavender").tag("lavender")
                        Text("Red").tag("red")
                    }
                }

                // Content Section
                Section("Content") {
                    NavigationLink {
                        Text("Search Screen")
                    } label: {
                        Label("Search", systemImage: "magnifyingglass")
                    }

                    NavigationLink {
                        BookmarksListView()
                    } label: {
                        Label("Bookmarks", systemImage: "bookmark.fill")
                    }
                }

                // Resources Section
                Section("Resources") {
                    NavigationLink {
                        AboutView()
                    } label: {
                        Label("About", systemImage: "info.circle")
                    }

                    Link(destination: URL(string: "https://hub4apps.com/privacy.html")!) {
                        Label("Privacy Policy", systemImage: "hand.raised")
                    }

                    Link(destination: URL(string: "https://hub4apps.com/terms.html")!) {
                        Label("Terms of Service", systemImage: "doc.text")
                    }
                }

                // Extras Section
                Section("Extras") {
                    Button {
                        shareApp()
                    } label: {
                        Label("Share This App", systemImage: "square.and.arrow.up")
                    }

                    HStack {
                        Text("App Version")
                        Spacer()
                        Text(viewModel.appVersion)
                            .foregroundStyle(.secondary)
                    }
                }

                // Account Section (if authenticated)
                if viewModel.isAuthenticated {
                    Section("Account") {
                        HStack {
                            Image(systemName: "person.circle.fill")
                                .font(.title)
                                .foregroundStyle(.blue)

                            VStack(alignment: .leading) {
                                Text(viewModel.userName ?? "User")
                                    .font(.headline)
                                if let email = viewModel.userEmail {
                                    Text(email)
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                            }
                        }

                        Button("Sign Out", role: .destructive) {
                            Task {
                                await viewModel.signOut()
                            }
                        }
                    }
                }
            }
            .navigationTitle("More")
            .task {
                await viewModel.loadAuthState()
            }
        }
    }

    private func shareApp() {
        let url = URL(string: "https://apps.apple.com/app/gospel-wisdom/id123456789")!
        let activityVC = UIActivityViewController(activityItems: [url], applicationActivities: nil)

        if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
           let window = windowScene.windows.first,
           let rootVC = window.rootViewController {
            rootVC.present(activityVC, animated: true)
        }
    }
}

// MARK: - Bookmarks List View (Placeholder)

struct BookmarksListView: View {
    var body: some View {
        Text("Bookmarks coming soon...")
            .navigationTitle("Bookmarks")
    }
}

// MARK: - About View

struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                Image(systemName: "book.circle.fill")
                    .font(.system(size: 80))
                    .foregroundStyle(.blue)

                Text("Gospel Wisdom")
                    .font(.title)
                    .fontWeight(.bold)

                Text("A bite-size guide to the Gospel, offering books, situations, and reflections—now with custom themes and more.")
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.secondary)
                    .padding(.horizontal)

                Divider()

                VStack(spacing: 8) {
                    Text("\"For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.\"")
                        .italic()
                        .multilineTextAlignment(.center)

                    Text("— John 3:16")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .padding()
                .background(.blue.opacity(0.1))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)

                Text("Made with ❤️ for spiritual seekers everywhere")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            .padding()
        }
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - View Model

@MainActor
class SettingsViewModel: ObservableObject {
    @Published var isAuthenticated = false
    @Published var userName: String?
    @Published var userEmail: String?
    @Published var appVersion = "1.0.96"

    func loadAuthState() async {
        do {
            let state = try await FlutterBridge.shared.getAuthState()
            isAuthenticated = state.isAuthenticated
            userName = state.user?.displayName
            userEmail = state.user?.email

            // Get app config for version
            let config = try await FlutterBridge.shared.getAppConfig()
            appVersion = config.appVersion
        } catch {
            print("❌ Failed to load auth state: \(error)")
        }
    }

    func signOut() async {
        do {
            try await FlutterBridge.shared.signOut()
            isAuthenticated = false
            userName = nil
            userEmail = nil
        } catch {
            print("❌ Failed to sign out: \(error)")
        }
    }
}

#Preview {
    SettingsView()
}
