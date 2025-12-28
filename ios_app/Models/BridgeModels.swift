// ios_app/Models/BridgeModels.swift
//
// Swift models that match Flutter bridge API JSON responses

import Foundation

// MARK: - App Config

struct AppConfig: Codable {
    let appName: String
    let appVersion: String
    let buildNumber: Int
    let apiVersion: Int
    let supportedLocales: [String]
    let features: Features

    struct Features: Codable {
        let journal: Bool
        let bookmarks: Bool
        let scenarios: Bool
        let search: Bool
        let audio: Bool
        let widgets: Bool
    }
}

// MARK: - Daily Verse

struct DailyVerseResponse: Codable {
    let date: String
    let locale: String
    let verse: Verse
}

// MARK: - Books (Gospels)

struct BooksResponse: Codable {
    let books: [Book]
    let totalBooks: Int
}

struct Book: Codable, Identifiable {
    let id: String
    let name: String
    let abbreviation: String
    let chapterCount: Int
    let verseCount: Int
    let description: String
    let order: Int
}

// MARK: - Chapters

struct ChaptersResponse: Codable {
    let bookId: String
    let chapters: [Chapter]
    let totalChapters: Int
}

struct Chapter: Codable, Identifiable {
    let id: String
    let bookId: String
    let chapterNumber: Int
    let title: String
    let summary: String?
    let keyTeachings: [String]?
    let verseCount: Int
    let scenarioCount: Int
}

// MARK: - Verses

struct VersesResponse: Codable {
    let chapterId: String
    let verses: [Verse]
    let pagination: Pagination
}

struct Verse: Codable, Identifiable {
    let id: String
    let book: String?
    let chapter: Int?
    let verseNumber: Int
    let text: String
    let translation: String?

    // Computed for compatibility
    var chapterId: String? { nil }
}

// MARK: - Scenarios

struct ScenariosResponse: Codable {
    let scenarios: [Scenario]
    let pagination: Pagination
    let filters: ScenarioFilters?
}

struct ScenarioFilters: Codable {
    let category: String?
    let tags: [String]
}

struct Scenario: Codable, Identifiable {
    let id: String
    let title: String
    let description: String
    let category: String?
    let tags: [String]?
    let chapter: Int?
    let heartSays: String?
    let dutySays: String?
    let wisdomSteps: [String]?
    let relatedVerses: [String]?
}

// MARK: - Search

struct SearchResponse: Codable {
    let query: String
    let results: [SearchResult]
    let totalResults: Int
}

struct SearchResult: Codable, Identifiable {
    var id: String { "\(type)_\(itemId)" }
    let type: String
    let itemId: String
    let title: String
    let preview: String?
    let score: Double?
}

// MARK: - Bookmarks

struct BookmarksResponse: Codable {
    let bookmarks: [Bookmark]
    let totalBookmarks: Int
    let stats: BookmarkStats
}

struct Bookmark: Codable, Identifiable {
    let id: String
    let itemType: String
    let itemId: String
    let title: String
    let preview: String?
    let createdAt: String
}

struct BookmarkStats: Codable {
    let verses: Int
    let chapters: Int
    let scenarios: Int
}

struct BookmarkResult: Codable {
    let success: Bool
    let bookmarkId: String?
    let error: String?
}

// MARK: - Journal

struct JournalResponse: Codable {
    let entries: [JournalEntry]
    let pagination: Pagination
}

struct JournalEntry: Codable, Identifiable {
    let id: String?
    let content: String
    let category: String
    let rating: Int
    let tags: [String]
    let createdAt: String?
    let updatedAt: String?

    init(id: String? = nil, content: String, category: String = "General", rating: Int = 0, tags: [String] = []) {
        self.id = id
        self.content = content
        self.category = category
        self.rating = rating
        self.tags = tags
        self.createdAt = nil
        self.updatedAt = nil
    }
}

struct JournalSaveResult: Codable {
    let success: Bool
    let entryId: String?
    let isNew: Bool?
    let error: String?
}

// MARK: - Authentication

struct AuthState: Codable {
    let isAuthenticated: Bool
    let isAnonymous: Bool
    let user: User?
}

struct User: Codable {
    let id: String
    let email: String?
    let displayName: String?
    let avatarUrl: String?
    let provider: String?
}

struct AuthResult: Codable {
    let success: Bool
    let user: User?
    let error: String?
}

// MARK: - Common

struct Pagination: Codable {
    let page: Int
    let limit: Int
    let totalItems: Int
    let totalPages: Int
    let hasMore: Bool
}
