// test/helpers/test_helpers.dart

import 'package:GospelWisdom/models/chapter.dart';
import 'package:GospelWisdom/models/verse.dart';
import 'package:GospelWisdom/models/scenario.dart';
import 'package:GospelWisdom/models/bookmark.dart';

/// Test data builders and mock factories for unit tests
class TestHelpers {
  /// Create a sample Chapter for testing
  static Chapter createTestChapter({
    String? id,
    int? gospelId,
    int? chapterNumber,
    String? title,
    String? summary,
  }) {
    return Chapter(
      id: id ?? 'test-chapter-uuid-123',
      gospelId: gospelId ?? 1,
      chapterNumber: chapterNumber ?? 1,
      title: title ?? 'Test Chapter',
      summary: summary ?? 'This is a test chapter summary',
      theme: 'Faith and Trust',
      keyTeachings: ['Teaching 1', 'Teaching 2'],
      keyVerses: ['1:1', '1:2'],
      verseCount: 10,
      events: ['Event 1', 'Event 2'],
      crossReferences: ['Matthew 2:1', 'Luke 3:1'],
      createdAt: DateTime(2024, 1, 1),
    );
  }

  /// Create a sample Verse for testing
  static Verse createTestVerse({
    String? id,
    int? gospelId,
    String? chapterId,
    int? verseNumber,
    String? text,
    String? reference,
  }) {
    return Verse(
      id: id ?? 'test-verse-uuid-456',
      gospelId: gospelId ?? 1,
      chapterId: chapterId ?? 'test-chapter-uuid-123',
      verseNumber: verseNumber ?? 1,
      text: text ?? 'In the beginning was the Word, and the Word was with God.',
      reference: reference ?? 'John 1:1',
      translationCode: 'NIV',
      context: 'Opening of John gospel',
      crossReferences: ['Genesis 1:1', 'Colossians 1:16'],
      keywords: ['word', 'beginning', 'god'],
      themes: ['Creation', 'Divinity of Christ'],
      createdAt: DateTime(2024, 1, 1),
    );
  }

  /// Create a sample Scenario for testing
  static Scenario createTestScenario({
    int? id,
    String? title,
    String? description,
    String? category,
    String? gospelWisdom,
  }) {
    return Scenario(
      id: id ?? 1,
      title: title ?? 'Test Scenario: Facing Challenges',
      description: description ?? 'How to handle difficult situations',
      category: category ?? 'Faith',
      gospelId: 1,
      chapterId: 'test-chapter-uuid-123',
      verseId: 'test-verse-uuid-456',
      verseReference: 'Matthew 5:3',
      heartResponse: 'Feel anxious and worried',
      gospelResponse: 'Trust in God and have faith',
      gospelWisdom: gospelWisdom ?? 'Blessed are the poor in spirit, for theirs is the kingdom of heaven',
      actionSteps: ['Pray daily', 'Read scripture', 'Trust God'],
      tags: ['faith', 'trust', 'prayer'],
      difficultyLevel: 'Medium',
      createdAt: DateTime(2024, 1, 1),
      updatedAt: DateTime(2024, 1, 1),
    );
  }

  /// Create a sample Bookmark for testing
  static Bookmark createTestBookmark({
    String? id,
    String? userDeviceId,
    BookmarkType? bookmarkType,
    int? referenceId,
    int? chapterId,
    String? title,
  }) {
    return Bookmark(
      id: id ?? 'test-bookmark-uuid-789',
      userDeviceId: userDeviceId ?? 'test-device-123',
      bookmarkType: bookmarkType ?? BookmarkType.verse,
      referenceId: referenceId ?? 1,
      chapterId: chapterId ?? 1,
      title: title ?? 'John 3:16',
      contentPreview: 'For God so loved the world...',
      notes: 'My favorite verse',
      tags: ['love', 'salvation'],
      isHighlighted: true,
      highlightColor: HighlightColor.yellow,
      createdAt: DateTime(2024, 1, 1),
      updatedAt: DateTime(2024, 1, 1),
      syncStatus: SyncStatus.synced,
    );
  }

  /// Create test JSON data for Chapter
  static Map<String, dynamic> createChapterJson({
    String? id,
    int? gospelId,
    int? chapterNumber,
  }) {
    return {
      'id': id ?? 'test-chapter-uuid-123',
      'gospel_id': gospelId ?? 1,
      'chapter_number': chapterNumber ?? 1,
      'title': 'Test Chapter',
      'summary': 'Test summary',
      'theme': 'Test theme',
      'key_teachings': ['Teaching 1', 'Teaching 2'],
      'key_verses': ['1:1', '1:2'],
      'verse_count': 10,
      'events': ['Event 1'],
      'cross_references': ['Matthew 2:1'],
      'created_at': '2024-01-01T00:00:00.000Z',
    };
  }

  /// Create test JSON data for Verse
  static Map<String, dynamic> createVerseJson({
    String? id,
    int? gospelId,
    String? chapterId,
    int? verseNumber,
  }) {
    return {
      'id': id ?? 'test-verse-uuid-456',
      'gospel_id': gospelId ?? 1,
      'chapter_id': chapterId ?? 'test-chapter-uuid-123',
      'verse_number': verseNumber ?? 1,
      'text': 'Test verse text',
      'reference': 'John 1:1',
      'translation_code': 'NIV',
      'context': 'Test context',
      'cross_references': ['Genesis 1:1'],
      'keywords': ['word', 'god'],
      'themes': ['Creation'],
      'created_at': '2024-01-01T00:00:00.000Z',
    };
  }

  /// Create test JSON data for Scenario
  static Map<String, dynamic> createScenarioJson({
    int? id,
    String? title,
  }) {
    return {
      'id': id ?? 1,
      'title': title ?? 'Test Scenario',
      'description': 'Test description',
      'category': 'Faith',
      'gospel_id': 1,
      'chapter_id': 'test-chapter-uuid-123',
      'verse_id': 'test-verse-uuid-456',
      'verse_reference': 'Matthew 5:3',
      'heart_response': 'Test heart response',
      'gospel_response': 'Test gospel response',
      'gospel_wisdom': 'Test wisdom',
      'action_steps': ['Step 1', 'Step 2'],
      'tags': ['faith', 'trust'],
      'difficulty_level': 'Medium',
      'created_at': '2024-01-01T00:00:00.000Z',
      'updated_at': '2024-01-01T00:00:00.000Z',
    };
  }

  /// Create test JSON data for Bookmark
  static Map<String, dynamic> createBookmarkJson({
    String? id,
    String? userDeviceId,
  }) {
    return {
      'id': id ?? 'test-bookmark-uuid-789',
      'user_device_id': userDeviceId ?? 'test-device-123',
      'bookmark_type': 'verse',
      'reference_id': 1,
      'chapter_id': 1,
      'title': 'John 3:16',
      'content_preview': 'For God so loved the world...',
      'notes': 'My favorite verse',
      'tags': ['love', 'salvation'],
      'is_highlighted': true,
      'highlight_color': 'yellow',
      'created_at': '2024-01-01T00:00:00.000Z',
      'updated_at': '2024-01-01T00:00:00.000Z',
      'sync_status': 'synced',
    };
  }
}
