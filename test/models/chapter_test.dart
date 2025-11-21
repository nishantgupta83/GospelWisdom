// test/models/chapter_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/models/chapter.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('Chapter Model', () {
    late Chapter testChapter;

    setUp(() {
      testChapter = TestHelpers.createTestChapter();
    });

    group('Constructor', () {
      test('should create a Chapter with all required fields', () {
        expect(testChapter.id, isNotEmpty);
        expect(testChapter.gospelId, equals(1));
        expect(testChapter.chapterNumber, equals(1));
        expect(testChapter.title, equals('Test Chapter'));
      });

      test('should create a Chapter with optional fields', () {
        expect(testChapter.summary, isNotNull);
        expect(testChapter.theme, isNotNull);
        expect(testChapter.keyTeachings, isNotNull);
        expect(testChapter.keyVerses, isNotNull);
      });
    });

    group('JSON Serialization', () {
      test('should serialize Chapter to JSON correctly', () {
        final json = testChapter.toJson();

        expect(json['id'], equals(testChapter.id));
        expect(json['gospel_id'], equals(testChapter.gospelId));
        expect(json['chapter_number'], equals(testChapter.chapterNumber));
        expect(json['title'], equals(testChapter.title));
        expect(json['summary'], equals(testChapter.summary));
      });

      test('should deserialize Chapter from JSON correctly', () {
        final json = TestHelpers.createChapterJson();
        final chapter = Chapter.fromJson(json);

        expect(chapter.id, equals(json['id']));
        expect(chapter.gospelId, equals(json['gospel_id']));
        expect(chapter.chapterNumber, equals(json['chapter_number']));
        expect(chapter.title, equals(json['title']));
      });

      test('should handle null optional fields in JSON', () {
        final json = {
          'id': 'test-id',
          'gospel_id': 1,
          'chapter_number': 1,
          'title': null,
          'summary': null,
          'theme': null,
          'key_teachings': null,
          'key_verses': null,
          'verse_count': null,
          'events': null,
          'cross_references': null,
          'created_at': null,
        };

        final chapter = Chapter.fromJson(json);

        expect(chapter.title, isNull);
        expect(chapter.summary, isNull);
        expect(chapter.keyTeachings, isNull);
      });

      test('should handle array fields in JSON', () {
        final json = TestHelpers.createChapterJson();
        final chapter = Chapter.fromJson(json);

        expect(chapter.keyTeachings, isA<List<String>>());
        expect(chapter.keyTeachings!.length, equals(2));
        expect(chapter.keyVerses, isA<List<String>>());
      });
    });

    group('Display Name', () {
      test('should return correct display name for Matthew', () {
        final matthew = TestHelpers.createTestChapter(gospelId: 1, chapterNumber: 5);
        expect(matthew.displayName, equals('Matthew 5'));
      });

      test('should return correct display name for Mark', () {
        final mark = TestHelpers.createTestChapter(gospelId: 2, chapterNumber: 3);
        expect(mark.displayName, equals('Mark 3'));
      });

      test('should return correct display name for Luke', () {
        final luke = TestHelpers.createTestChapter(gospelId: 3, chapterNumber: 10);
        expect(luke.displayName, equals('Luke 10'));
      });

      test('should return correct display name for John', () {
        final john = TestHelpers.createTestChapter(gospelId: 4, chapterNumber: 1);
        expect(john.displayName, equals('John 1'));
      });
    });

    group('toString Method', () {
      test('should return formatted string with display name and verse count', () {
        final result = testChapter.toString();
        expect(result, contains('Matthew 1'));
        expect(result, contains('verses: 10'));
      });
    });

    group('Multilingual Extensions', () {
      test('should create Chapter from translation JSON', () {
        final translationJson = {
          'title': 'Translated Title',
          'summary': 'Translated Summary',
          'theme': 'Translated Theme',
          'key_teachings': ['Teaching A', 'Teaching B'],
        };

        final chapter = ChapterMultilingualExtensions.fromTranslationJson(
          'test-id',
          1,
          5,
          translationJson,
        );

        expect(chapter.title, equals('Translated Title'));
        expect(chapter.summary, equals('Translated Summary'));
        expect(chapter.gospelId, equals(1));
        expect(chapter.chapterNumber, equals(5));
      });

      test('should create copy with translation fields', () {
        final updated = testChapter.withTranslation(
          title: 'New Title',
          summary: 'New Summary',
        );

        expect(updated.title, equals('New Title'));
        expect(updated.summary, equals('New Summary'));
        expect(updated.gospelId, equals(testChapter.gospelId));
        expect(updated.chapterNumber, equals(testChapter.chapterNumber));
      });

      test('should check if chapter has translation data', () {
        expect(testChapter.hasTranslationData, isTrue);

        final emptyChapter = Chapter(
          id: 'test-id',
          gospelId: 1,
          chapterNumber: 1,
        );
        expect(emptyChapter.hasTranslationData, isFalse);
      });
    });

    group('Edge Cases', () {
      test('should handle minimum valid chapter', () {
        final minChapter = Chapter(
          id: 'min-id',
          gospelId: 1,
          chapterNumber: 1,
        );

        expect(minChapter.id, equals('min-id'));
        expect(minChapter.title, isNull);
        expect(minChapter.summary, isNull);
      });

      test('should handle maximum chapter numbers', () {
        final matthew28 = TestHelpers.createTestChapter(gospelId: 1, chapterNumber: 28);
        expect(matthew28.chapterNumber, equals(28));

        final mark16 = TestHelpers.createTestChapter(gospelId: 2, chapterNumber: 16);
        expect(mark16.chapterNumber, equals(16));
      });

      test('should handle empty arrays', () {
        final chapter = Chapter(
          id: 'test-id',
          gospelId: 1,
          chapterNumber: 1,
          keyTeachings: [],
          keyVerses: [],
          events: [],
          crossReferences: [],
        );

        expect(chapter.keyTeachings, isEmpty);
        expect(chapter.keyVerses, isEmpty);
      });
    });
  });
}
