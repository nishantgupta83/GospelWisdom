// test/services/bookmark_service_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/models/bookmark.dart';
import '../helpers/mock_services.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('BookmarkService', () {
    late MockBookmarkService bookmarkService;

    setUp(() {
      bookmarkService = MockBookmarkService();
    });

    group('Create Operations', () {
      test('should add a new bookmark', () async {
        final result = await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );

        expect(result, isTrue);
        expect(bookmarkService.bookmarks.length, equals(1));
      });

      test('should return all bookmarks', () async {
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 2,
          chapterId: 1,
          title: 'John 3:17',
        );

        expect(bookmarkService.bookmarks.length, equals(2));
      });
    });

    group('Read Operations', () {
      test('should return empty list initially', () {
        expect(bookmarkService.bookmarks, isEmpty);
      });

      test('should get all bookmarks after adding', () async {
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );

        expect(bookmarkService.bookmarks.length, equals(1));
      });
    });

    group('Update Operations', () {
      test('should update existing bookmark', () async {
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );

        final bookmarkId = bookmarkService.bookmarks.first.id;
        final result = await bookmarkService.updateBookmark(
          bookmarkId: bookmarkId,
          notes: 'Updated notes',
        );

        expect(result, isTrue);
      });
    });

    group('Delete Operations', () {
      test('should delete bookmark by id', () async {
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );

        final bookmarkId = bookmarkService.bookmarks.first.id;
        await bookmarkService.deleteBookmark(bookmarkId);

        expect(bookmarkService.bookmarks, isEmpty);
      });

      test('should only delete specified bookmark', () async {
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 1,
          chapterId: 1,
          title: 'John 3:16',
        );
        await bookmarkService.addBookmark(
          bookmarkType: BookmarkType.verse,
          referenceId: 2,
          chapterId: 1,
          title: 'John 3:17',
        );

        final firstBookmarkId = bookmarkService.bookmarks.first.id;
        await bookmarkService.deleteBookmark(firstBookmarkId);

        expect(bookmarkService.bookmarks.length, equals(1));
      });
    });
  });
}
