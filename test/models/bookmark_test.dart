// test/models/bookmark_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/models/bookmark.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('Bookmark Model', () {
    late Bookmark testBookmark;

    setUp(() {
      testBookmark = TestHelpers.createTestBookmark();
    });

    group('Constructor', () {
      test('should create a Bookmark with all required fields', () {
        expect(testBookmark.id, isNotEmpty);
        expect(testBookmark.userDeviceId, isNotEmpty);
        expect(testBookmark.bookmarkType, equals(BookmarkType.verse));
        expect(testBookmark.referenceId, equals(1));
        expect(testBookmark.chapterId, equals(1));
        expect(testBookmark.title, isNotEmpty);
      });

      test('should create a Bookmark with optional fields', () {
        expect(testBookmark.contentPreview, isNotNull);
        expect(testBookmark.notes, isNotNull);
        expect(testBookmark.tags, isNotEmpty);
        expect(testBookmark.isHighlighted, isTrue);
      });

      test('should default to empty tags array', () {
        final bookmark = Bookmark(
          id: 'test-id',
          userDeviceId: 'device-id',
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'Test',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );

        expect(bookmark.tags, isEmpty);
      });
    });

    group('JSON Serialization', () {
      test('should serialize Bookmark to JSON correctly', () {
        final json = testBookmark.toJson();

        expect(json['id'], equals(testBookmark.id));
        expect(json['user_device_id'], equals(testBookmark.userDeviceId));
        expect(json['bookmark_type'], equals('verse'));
        expect(json['reference_id'], equals(testBookmark.referenceId));
        expect(json['title'], equals(testBookmark.title));
      });

      test('should deserialize Bookmark from JSON correctly', () {
        final json = TestHelpers.createBookmarkJson();
        final bookmark = Bookmark.fromJson(json);

        expect(bookmark.id, equals(json['id']));
        expect(bookmark.userDeviceId, equals(json['user_device_id']));
        expect(bookmark.bookmarkType, equals(BookmarkType.verse));
        expect(bookmark.title, equals(json['title']));
      });

      test('should handle null optional fields in JSON', () {
        final json = {
          'id': 'test-id',
          'user_device_id': 'device-id',
          'bookmark_type': 'verse',
          'reference_id': 1,
          'chapter_id': 1,
          'title': 'Test',
          'content_preview': null,
          'notes': null,
          'tags': null,
          'is_highlighted': null,
          'highlight_color': null,
          'created_at': '2024-01-01T00:00:00.000Z',
          'updated_at': '2024-01-01T00:00:00.000Z',
          'sync_status': null,
        };

        final bookmark = Bookmark.fromJson(json);

        expect(bookmark.contentPreview, isNull);
        expect(bookmark.notes, isNull);
        expect(bookmark.tags, isEmpty);
        expect(bookmark.isHighlighted, isFalse);
      });
    });

    group('BookmarkType Enum', () {
      test('should support verse bookmark type', () {
        expect(BookmarkType.verse.value, equals('verse'));
        expect(BookmarkType.fromString('verse'), equals(BookmarkType.verse));
      });

      test('should support chapter bookmark type', () {
        expect(BookmarkType.chapter.value, equals('chapter'));
        expect(BookmarkType.fromString('chapter'), equals(BookmarkType.chapter));
      });

      test('should support scenario bookmark type', () {
        expect(BookmarkType.scenario.value, equals('scenario'));
        expect(BookmarkType.fromString('scenario'), equals(BookmarkType.scenario));
      });

      test('should default to verse for unknown type', () {
        expect(BookmarkType.fromString('unknown'), equals(BookmarkType.verse));
      });
    });

    group('HighlightColor Enum', () {
      test('should support all highlight colors', () {
        expect(HighlightColor.yellow.value, equals('yellow'));
        expect(HighlightColor.green.value, equals('green'));
        expect(HighlightColor.blue.value, equals('blue'));
        expect(HighlightColor.pink.value, equals('pink'));
        expect(HighlightColor.purple.value, equals('purple'));
      });

      test('should parse color from string', () {
        expect(HighlightColor.fromString('yellow'), equals(HighlightColor.yellow));
        expect(HighlightColor.fromString('green'), equals(HighlightColor.green));
      });

      test('should default to yellow for unknown color', () {
        expect(HighlightColor.fromString('unknown'), equals(HighlightColor.yellow));
      });
    });

    group('SyncStatus Enum', () {
      test('should support all sync statuses', () {
        expect(SyncStatus.synced.value, equals('synced'));
        expect(SyncStatus.pending.value, equals('pending'));
        expect(SyncStatus.offline.value, equals('offline'));
      });

      test('should parse status from string', () {
        expect(SyncStatus.fromString('synced'), equals(SyncStatus.synced));
        expect(SyncStatus.fromString('pending'), equals(SyncStatus.pending));
      });

      test('should default to offline for unknown status', () {
        expect(SyncStatus.fromString('unknown'), equals(SyncStatus.offline));
      });
    });

    group('Factory Methods', () {
      test('should create bookmark with UUID', () {
        final bookmark = Bookmark.create(
          userDeviceId: 'device-123',
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );

        expect(bookmark.id, isNotEmpty);
        expect(bookmark.id.contains('-'), isTrue); // UUID format
        expect(bookmark.syncStatus, equals(SyncStatus.pending));
      });

      test('should set timestamps on creation', () {
        final before = DateTime.now();
        final bookmark = Bookmark.create(
          userDeviceId: 'device-123',
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'Test',
        );
        final after = DateTime.now();

        expect(bookmark.createdAt.isAfter(before) || bookmark.createdAt.isAtSameMomentAs(before), isTrue);
        expect(bookmark.createdAt.isBefore(after) || bookmark.createdAt.isAtSameMomentAs(after), isTrue);
      });
    });

    group('copyWith Method', () {
      test('should create copy with updated fields', () {
        final updated = testBookmark.copyWith(
          title: 'New Title',
          notes: 'New Notes',
          isHighlighted: false,
        );

        expect(updated.title, equals('New Title'));
        expect(updated.notes, equals('New Notes'));
        expect(updated.isHighlighted, isFalse);
        expect(updated.id, equals(testBookmark.id));
      });

      test('should update updatedAt timestamp on copy', () {
        final original = testBookmark.updatedAt;
        final updated = testBookmark.copyWith(title: 'New');

        expect(updated.updatedAt.isAfter(original) || updated.updatedAt.isAtSameMomentAs(original), isTrue);
      });
    });

    group('Validation', () {
      test('should validate correct bookmark', () {
        expect(testBookmark.isValid, isTrue);
      });

      test('should invalidate empty id', () {
        final invalid = testBookmark.copyWith(id: '');
        expect(invalid.isValid, isFalse);
      });

      test('should invalidate empty userDeviceId', () {
        final bookmark = Bookmark(
          id: 'test-id',
          userDeviceId: '',
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'Test',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        expect(bookmark.isValid, isFalse);
      });

      test('should invalidate empty title', () {
        final bookmark = Bookmark(
          id: 'test-id',
          userDeviceId: 'device-id',
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: '',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        expect(bookmark.isValid, isFalse);
      });

      test('should invalidate zero referenceId', () {
        final bookmark = Bookmark(
          id: 'test-id',
          userDeviceId: 'device-id',
          bookmarkType: BookmarkType.verse,
          referenceId: 0,
          chapterId: 1,
          title: 'Test',
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );
        expect(bookmark.isValid, isFalse);
      });
    });

    group('needsSync Property', () {
      test('should return true for pending status', () {
        final bookmark = testBookmark.copyWith(syncStatus: SyncStatus.pending);
        expect(bookmark.needsSync, isTrue);
      });

      test('should return true for offline status', () {
        final bookmark = testBookmark.copyWith(syncStatus: SyncStatus.offline);
        expect(bookmark.needsSync, isTrue);
      });

      test('should return false for synced status', () {
        final bookmark = testBookmark.copyWith(syncStatus: SyncStatus.synced);
        expect(bookmark.needsSync, isFalse);
      });
    });

    group('reference Property', () {
      test('should format verse reference correctly', () {
        final bookmark = TestHelpers.createTestBookmark(
          bookmarkType: BookmarkType.verse,
          chapterId: 3,
          referenceId: 16,
        );
        expect(bookmark.reference, equals('verse:3.16'));
      });

      test('should format chapter reference correctly', () {
        final bookmark = TestHelpers.createTestBookmark(
          bookmarkType: BookmarkType.chapter,
          referenceId: 5,
        );
        expect(bookmark.reference, equals('chapter:5'));
      });

      test('should format scenario reference correctly', () {
        final bookmark = TestHelpers.createTestBookmark(
          bookmarkType: BookmarkType.scenario,
          chapterId: 2,
          referenceId: 10,
        );
        expect(bookmark.reference, equals('scenario:2.10'));
      });
    });

    group('Equality and HashCode', () {
      test('should be equal if same id and userDeviceId', () {
        final bookmark1 = TestHelpers.createTestBookmark(
          id: 'same-id',
          userDeviceId: 'same-device',
        );
        final bookmark2 = TestHelpers.createTestBookmark(
          id: 'same-id',
          userDeviceId: 'same-device',
        );

        expect(bookmark1 == bookmark2, isTrue);
        expect(bookmark1.hashCode, equals(bookmark2.hashCode));
      });

      test('should not be equal if different id', () {
        final bookmark1 = TestHelpers.createTestBookmark(id: 'id-1');
        final bookmark2 = TestHelpers.createTestBookmark(id: 'id-2');

        expect(bookmark1 == bookmark2, isFalse);
      });
    });

    group('toString Method', () {
      test('should return formatted string', () {
        final result = testBookmark.toString();

        expect(result, contains('Bookmark'));
        expect(result, contains(testBookmark.id));
        expect(result, contains('verse'));
        expect(result, contains(testBookmark.title));
      });
    });

    group('Edge Cases', () {
      test('should handle very long content preview', () {
        final longPreview = 'A' * 200;
        final bookmark = TestHelpers.createTestBookmark(
          id: 'test-id',
          userDeviceId: 'device-id',
        );
        final updated = bookmark.copyWith(contentPreview: longPreview);

        expect(updated.contentPreview!.length, equals(200));
      });

      test('should handle many tags', () {
        final manyTags = List.generate(20, (i) => 'tag$i');
        final bookmark = Bookmark(
          id: 'test-id',
          userDeviceId: 'device-id',
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'Test',
          tags: manyTags,
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
        );

        expect(bookmark.tags.length, equals(20));
      });

      test('should handle special characters in notes', () {
        final bookmark = testBookmark.copyWith(
          notes: 'Notes with "quotes" and \'apostrophes\' and \n newlines',
        );

        expect(bookmark.notes, contains('"'));
        expect(bookmark.notes, contains('\''));
      });
    });
  });
}
