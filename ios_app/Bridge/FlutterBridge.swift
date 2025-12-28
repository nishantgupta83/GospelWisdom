// ios_app/Bridge/FlutterBridge.swift
//
// Swift wrapper for Flutter MethodChannel calls
// Provides typed, async/await API for SwiftUI views

import Foundation
import Flutter

/// Bridge to Flutter core business logic
/// All methods return Swift types decoded from JSON
@MainActor
class FlutterBridge {
    static let shared = FlutterBridge()

    private var channel: FlutterMethodChannel? {
        FlutterEngineManager.shared.channel
    }

    private init() {}

    // MARK: - Generic Invoke Method

    /// Invoke a Flutter method and decode the JSON response
    private func invoke<T: Decodable>(_ method: String, arguments: [String: Any]? = nil) async throws -> T {
        guard let channel = channel else {
            throw BridgeError.engineNotReady
        }

        return try await withCheckedThrowingContinuation { continuation in
            channel.invokeMethod(method, arguments: arguments) { result in
                if let error = result as? FlutterError {
                    continuation.resume(throwing: BridgeError.flutterError(error.code, error.message ?? "Unknown error"))
                    return
                }

                guard let jsonString = result as? String else {
                    continuation.resume(throwing: BridgeError.invalidResponse)
                    return
                }

                do {
                    let data = Data(jsonString.utf8)
                    let decoded = try JSONDecoder().decode(T.self, from: data)
                    continuation.resume(returning: decoded)
                } catch {
                    continuation.resume(throwing: BridgeError.decodingFailed(error))
                }
            }
        }
    }

    /// Invoke a Flutter method that returns a boolean
    private func invokeVoid(_ method: String, arguments: [String: Any]? = nil) async throws {
        guard let channel = channel else {
            throw BridgeError.engineNotReady
        }

        return try await withCheckedThrowingContinuation { continuation in
            channel.invokeMethod(method, arguments: arguments) { result in
                if let error = result as? FlutterError {
                    continuation.resume(throwing: BridgeError.flutterError(error.code, error.message ?? "Unknown error"))
                    return
                }
                continuation.resume()
            }
        }
    }

    // MARK: - App Config

    func getAppConfig() async throws -> AppConfig {
        try await invoke("getAppConfig")
    }

    func getApiVersion() async throws -> Int {
        try await invoke("getApiVersion")
    }

    // MARK: - Daily Verse

    func getDailyVerse(date: String? = nil, locale: String = "en") async throws -> DailyVerseResponse {
        var args: [String: Any] = ["locale": locale]
        if let date = date {
            args["date"] = date
        }
        return try await invoke("getDailyVerse", arguments: args)
    }

    // MARK: - Books (Gospels)

    func listBooks() async throws -> BooksResponse {
        try await invoke("listBooks")
    }

    func getBook(bookId: String) async throws -> Book? {
        try await invoke("getBook", arguments: ["bookId": bookId])
    }

    // MARK: - Chapters

    func listChapters(bookId: String) async throws -> ChaptersResponse {
        try await invoke("listChapters", arguments: ["bookId": bookId])
    }

    func getChapter(chapterId: String) async throws -> Chapter {
        try await invoke("getChapter", arguments: ["chapterId": chapterId])
    }

    // MARK: - Verses

    func listVerses(chapterId: String, page: Int = 1, limit: Int = 50) async throws -> VersesResponse {
        try await invoke("listVerses", arguments: [
            "chapterId": chapterId,
            "page": page,
            "limit": limit
        ])
    }

    func searchVerses(query: String, limit: Int = 20) async throws -> SearchResponse {
        try await invoke("searchVerses", arguments: [
            "query": query,
            "limit": limit
        ])
    }

    // MARK: - Scenarios

    func listScenarios(page: Int = 1, limit: Int = 20, category: String? = nil, tags: [String]? = nil) async throws -> ScenariosResponse {
        var args: [String: Any] = ["page": page, "limit": limit]
        if let category = category { args["category"] = category }
        if let tags = tags { args["tags"] = tags }
        return try await invoke("listScenarios", arguments: args)
    }

    func getScenarioDetail(scenarioId: String) async throws -> Scenario {
        try await invoke("getScenarioDetail", arguments: ["scenarioId": scenarioId])
    }

    func searchScenarios(query: String, limit: Int = 20) async throws -> SearchResponse {
        try await invoke("searchScenarios", arguments: [
            "query": query,
            "limit": limit
        ])
    }

    // MARK: - Bookmarks

    func listBookmarks() async throws -> BookmarksResponse {
        try await invoke("bookmarkList")
    }

    func addBookmark(itemType: String, itemId: String, title: String, preview: String? = nil) async throws -> BookmarkResult {
        var args: [String: Any] = [
            "itemType": itemType,
            "itemId": itemId,
            "title": title
        ]
        if let preview = preview { args["preview"] = preview }
        return try await invoke("bookmarkAdd", arguments: args)
    }

    func removeBookmark(bookmarkId: String) async throws {
        try await invokeVoid("bookmarkRemove", arguments: ["bookmarkId": bookmarkId])
    }

    func isBookmarked(itemType: String, itemId: String) async throws -> Bool {
        try await invoke("isBookmarked", arguments: [
            "itemType": itemType,
            "itemId": itemId
        ])
    }

    // MARK: - Journal

    func listJournalEntries(page: Int = 1, limit: Int = 20) async throws -> JournalResponse {
        try await invoke("journalList", arguments: ["page": page, "limit": limit])
    }

    func getJournalEntry(entryId: String) async throws -> JournalEntry {
        try await invoke("journalGet", arguments: ["entryId": entryId])
    }

    func saveJournalEntry(_ entry: JournalEntry) async throws -> JournalSaveResult {
        let encoder = JSONEncoder()
        let data = try encoder.encode(entry)
        let dict = try JSONSerialization.jsonObject(with: data) as? [String: Any] ?? [:]
        return try await invoke("journalUpsert", arguments: dict)
    }

    func deleteJournalEntry(entryId: String) async throws {
        try await invokeVoid("journalDelete", arguments: ["entryId": entryId])
    }

    // MARK: - Authentication

    func getAuthState() async throws -> AuthState {
        try await invoke("getAuthState")
    }

    func signInWithGoogle() async throws -> AuthResult {
        try await invoke("signInGoogle")
    }

    func signInWithApple() async throws -> AuthResult {
        try await invoke("signInApple")
    }

    func signInWithEmail(email: String, password: String) async throws -> AuthResult {
        try await invoke("signInEmail", arguments: [
            "email": email,
            "password": password
        ])
    }

    func signOut() async throws {
        try await invokeVoid("signOut")
    }

    func deleteAccount() async throws {
        try await invokeVoid("deleteAccount")
    }
}

// MARK: - Bridge Errors

enum BridgeError: LocalizedError {
    case engineNotReady
    case invalidResponse
    case flutterError(String, String)
    case decodingFailed(Error)

    var errorDescription: String? {
        switch self {
        case .engineNotReady:
            return "Flutter engine is not ready"
        case .invalidResponse:
            return "Invalid response from Flutter"
        case .flutterError(let code, let message):
            return "Flutter error [\(code)]: \(message)"
        case .decodingFailed(let error):
            return "Failed to decode response: \(error.localizedDescription)"
        }
    }
}
