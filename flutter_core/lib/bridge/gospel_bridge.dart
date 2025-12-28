// flutter_core/lib/bridge/gospel_bridge.dart
//
// Bridge API for native apps (SwiftUI / Jetpack Compose)
// All business logic accessed via MethodChannel 'gospelwisdom/core'

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

import '../usecases/app_config_usecase.dart';
import '../usecases/books_usecase.dart';
import '../usecases/chapters_usecase.dart';
import '../usecases/verses_usecase.dart';
import '../usecases/scenarios_usecase.dart';
import '../usecases/bookmarks_usecase.dart';
import '../usecases/journal_usecase.dart';
import '../usecases/auth_usecase.dart';
import '../usecases/daily_verse_usecase.dart';

/// Bridge API version for compatibility checking
const int kBridgeApiVersion = 1;

/// Main bridge class that handles all native ↔ Flutter communication
class GospelBridge {
  static const MethodChannel _channel = MethodChannel('gospelwisdom/core');

  // Use cases (lazy initialized)
  static AppConfigUseCase? _appConfigUseCase;
  static BooksUseCase? _booksUseCase;
  static ChaptersUseCase? _chaptersUseCase;
  static VersesUseCase? _versesUseCase;
  static ScenariosUseCase? _scenariosUseCase;
  static BookmarksUseCase? _bookmarksUseCase;
  static JournalUseCase? _journalUseCase;
  static AuthUseCase? _authUseCase;
  static DailyVerseUseCase? _dailyVerseUseCase;

  /// Register all method handlers - call this on Flutter engine startup
  static void registerHandlers() {
    _channel.setMethodCallHandler(_handleMethodCall);
    debugPrint('✅ GospelBridge registered handlers');
  }

  /// Main method call handler
  static Future<dynamic> _handleMethodCall(MethodCall call) async {
    try {
      debugPrint('📱 Bridge call: ${call.method}');

      switch (call.method) {
        // ═══════════════════════════════════════════════════════════════
        // APP CONFIG
        // ═══════════════════════════════════════════════════════════════
        case 'getAppConfig':
          return _toJson(await _getAppConfigUseCase().getConfig());

        case 'getApiVersion':
          return kBridgeApiVersion;

        // ═══════════════════════════════════════════════════════════════
        // DAILY VERSE
        // ═══════════════════════════════════════════════════════════════
        case 'getDailyVerse':
          final args = call.arguments as Map<String, dynamic>?;
          final date = args?['date'] as String?;
          final locale = args?['locale'] as String? ?? 'en';
          return _toJson(await _getDailyVerseUseCase().getDailyVerse(
            date: date,
            locale: locale,
          ));

        case 'refreshDailyVerse':
          return _toJson(await _getDailyVerseUseCase().refreshDailyVerse());

        // ═══════════════════════════════════════════════════════════════
        // BOOKS (GOSPELS)
        // ═══════════════════════════════════════════════════════════════
        case 'listBooks':
          return _toJson(await _getBooksUseCase().listBooks());

        case 'getBook':
          final args = call.arguments as Map<String, dynamic>;
          final bookId = args['bookId'] as String;
          return _toJson(await _getBooksUseCase().getBook(bookId));

        // ═══════════════════════════════════════════════════════════════
        // CHAPTERS
        // ═══════════════════════════════════════════════════════════════
        case 'listChapters':
          final args = call.arguments as Map<String, dynamic>;
          final bookId = args['bookId'] as String;
          return _toJson(await _getChaptersUseCase().listChapters(bookId));

        case 'getChapter':
          final args = call.arguments as Map<String, dynamic>;
          final chapterId = args['chapterId'] as String;
          return _toJson(await _getChaptersUseCase().getChapter(chapterId));

        // ═══════════════════════════════════════════════════════════════
        // VERSES
        // ═══════════════════════════════════════════════════════════════
        case 'listVerses':
          final args = call.arguments as Map<String, dynamic>;
          final chapterId = args['chapterId'] as String;
          final page = args['page'] as int? ?? 1;
          final limit = args['limit'] as int? ?? 50;
          return _toJson(await _getVersesUseCase().listVerses(
            chapterId: chapterId,
            page: page,
            limit: limit,
          ));

        case 'getVerse':
          final args = call.arguments as Map<String, dynamic>;
          final verseId = args['verseId'] as String;
          return _toJson(await _getVersesUseCase().getVerse(verseId));

        case 'searchVerses':
          final args = call.arguments as Map<String, dynamic>;
          final query = args['query'] as String;
          final limit = args['limit'] as int? ?? 20;
          return _toJson(await _getVersesUseCase().searchVerses(
            query: query,
            limit: limit,
          ));

        // ═══════════════════════════════════════════════════════════════
        // SCENARIOS
        // ═══════════════════════════════════════════════════════════════
        case 'listScenarios':
          final args = call.arguments as Map<String, dynamic>?;
          final page = args?['page'] as int? ?? 1;
          final limit = args?['limit'] as int? ?? 20;
          final category = args?['category'] as String?;
          final tags = (args?['tags'] as List<dynamic>?)?.cast<String>();
          return _toJson(await _getScenariosUseCase().listScenarios(
            page: page,
            limit: limit,
            category: category,
            tags: tags,
          ));

        case 'getScenarioDetail':
          final args = call.arguments as Map<String, dynamic>;
          final scenarioId = args['scenarioId'] as String;
          return _toJson(await _getScenariosUseCase().getScenarioDetail(scenarioId));

        case 'searchScenarios':
          final args = call.arguments as Map<String, dynamic>;
          final query = args['query'] as String;
          final limit = args?['limit'] as int? ?? 20;
          return _toJson(await _getScenariosUseCase().searchScenarios(
            query: query,
            limit: limit,
          ));

        case 'getScenariosByChapter':
          final args = call.arguments as Map<String, dynamic>;
          final chapterId = args['chapterId'] as String;
          return _toJson(await _getScenariosUseCase().getScenariosByChapter(chapterId));

        // ═══════════════════════════════════════════════════════════════
        // BOOKMARKS
        // ═══════════════════════════════════════════════════════════════
        case 'bookmarkList':
          return _toJson(await _getBookmarksUseCase().listBookmarks());

        case 'bookmarkAdd':
          final args = call.arguments as Map<String, dynamic>;
          final itemType = args['itemType'] as String;
          final itemId = args['itemId'] as String;
          final title = args['title'] as String;
          final preview = args['preview'] as String?;
          return _toJson(await _getBookmarksUseCase().addBookmark(
            itemType: itemType,
            itemId: itemId,
            title: title,
            preview: preview,
          ));

        case 'bookmarkRemove':
          final args = call.arguments as Map<String, dynamic>;
          final bookmarkId = args['bookmarkId'] as String;
          return await _getBookmarksUseCase().removeBookmark(bookmarkId);

        case 'isBookmarked':
          final args = call.arguments as Map<String, dynamic>;
          final itemType = args['itemType'] as String;
          final itemId = args['itemId'] as String;
          return await _getBookmarksUseCase().isBookmarked(itemType, itemId);

        // ═══════════════════════════════════════════════════════════════
        // JOURNAL
        // ═══════════════════════════════════════════════════════════════
        case 'journalList':
          final args = call.arguments as Map<String, dynamic>?;
          final page = args?['page'] as int? ?? 1;
          final limit = args?['limit'] as int? ?? 20;
          return _toJson(await _getJournalUseCase().listEntries(
            page: page,
            limit: limit,
          ));

        case 'journalGet':
          final args = call.arguments as Map<String, dynamic>;
          final entryId = args['entryId'] as String;
          return _toJson(await _getJournalUseCase().getEntry(entryId));

        case 'journalUpsert':
          final args = call.arguments as Map<String, dynamic>;
          return _toJson(await _getJournalUseCase().upsertEntry(args));

        case 'journalDelete':
          final args = call.arguments as Map<String, dynamic>;
          final entryId = args['entryId'] as String;
          return await _getJournalUseCase().deleteEntry(entryId);

        // ═══════════════════════════════════════════════════════════════
        // AUTHENTICATION
        // ═══════════════════════════════════════════════════════════════
        case 'getAuthState':
          return _toJson(await _getAuthUseCase().getAuthState());

        case 'signInGoogle':
          return _toJson(await _getAuthUseCase().signInWithGoogle());

        case 'signInApple':
          return _toJson(await _getAuthUseCase().signInWithApple());

        case 'signInEmail':
          final args = call.arguments as Map<String, dynamic>;
          final email = args['email'] as String;
          final password = args['password'] as String;
          return _toJson(await _getAuthUseCase().signInWithEmail(email, password));

        case 'signUp':
          final args = call.arguments as Map<String, dynamic>;
          final email = args['email'] as String;
          final password = args['password'] as String;
          final name = args['name'] as String?;
          return _toJson(await _getAuthUseCase().signUp(email, password, name));

        case 'signOut':
          return await _getAuthUseCase().signOut();

        case 'deleteAccount':
          return await _getAuthUseCase().deleteAccount();

        case 'resetPassword':
          final args = call.arguments as Map<String, dynamic>;
          final email = args['email'] as String;
          return await _getAuthUseCase().resetPassword(email);

        // ═══════════════════════════════════════════════════════════════
        // UNKNOWN METHOD
        // ═══════════════════════════════════════════════════════════════
        default:
          throw PlatformException(
            code: 'NOT_IMPLEMENTED',
            message: 'Method ${call.method} not implemented',
          );
      }
    } catch (e, stackTrace) {
      debugPrint('❌ Bridge error: $e');
      debugPrint('$stackTrace');

      if (e is PlatformException) {
        rethrow;
      }

      throw PlatformException(
        code: 'BRIDGE_ERROR',
        message: e.toString(),
        details: stackTrace.toString(),
      );
    }
  }

  // ═══════════════════════════════════════════════════════════════════════
  // USE CASE GETTERS (lazy initialization)
  // ═══════════════════════════════════════════════════════════════════════

  static AppConfigUseCase _getAppConfigUseCase() {
    return _appConfigUseCase ??= AppConfigUseCase();
  }

  static BooksUseCase _getBooksUseCase() {
    return _booksUseCase ??= BooksUseCase();
  }

  static ChaptersUseCase _getChaptersUseCase() {
    return _chaptersUseCase ??= ChaptersUseCase();
  }

  static VersesUseCase _getVersesUseCase() {
    return _versesUseCase ??= VersesUseCase();
  }

  static ScenariosUseCase _getScenariosUseCase() {
    return _scenariosUseCase ??= ScenariosUseCase();
  }

  static BookmarksUseCase _getBookmarksUseCase() {
    return _bookmarksUseCase ??= BookmarksUseCase();
  }

  static JournalUseCase _getJournalUseCase() {
    return _journalUseCase ??= JournalUseCase();
  }

  static AuthUseCase _getAuthUseCase() {
    return _authUseCase ??= AuthUseCase();
  }

  static DailyVerseUseCase _getDailyVerseUseCase() {
    return _dailyVerseUseCase ??= DailyVerseUseCase();
  }

  // ═══════════════════════════════════════════════════════════════════════
  // HELPERS
  // ═══════════════════════════════════════════════════════════════════════

  /// Convert result to JSON string for native consumption
  static String _toJson(dynamic result) {
    if (result == null) {
      return '{}';
    }
    if (result is String) {
      return result;
    }
    if (result is Map || result is List) {
      return jsonEncode(result);
    }
    // Assume it has a toJson method
    try {
      return jsonEncode(result.toJson());
    } catch (e) {
      return jsonEncode({'data': result.toString()});
    }
  }

  /// Dispose all resources
  static void dispose() {
    _appConfigUseCase = null;
    _booksUseCase = null;
    _chaptersUseCase = null;
    _versesUseCase = null;
    _scenariosUseCase = null;
    _bookmarksUseCase = null;
    _journalUseCase = null;
    _authUseCase = null;
    _dailyVerseUseCase = null;
  }
}
