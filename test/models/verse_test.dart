// test/models/verse_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/models/verse.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('Verse Model', () {
    late Verse testVerse;

    setUp(() {
      testVerse = TestHelpers.createTestVerse();
    });

    group('Constructor', () {
      test('should create a Verse with all required fields', () {
        expect(testVerse.id, isNotEmpty);
        expect(testVerse.gospelId, equals(1));
        expect(testVerse.chapterId, isNotEmpty);
        expect(testVerse.verseNumber, equals(1));
        expect(testVerse.text, isNotEmpty);
        expect(testVerse.reference, equals('John 1:1'));
      });

      test('should default to NIV translation', () {
        expect(testVerse.translationCode, equals('NIV'));
      });

      test('should create a Verse with optional fields', () {
        expect(testVerse.context, isNotNull);
        expect(testVerse.crossReferences, isNotNull);
        expect(testVerse.keywords, isNotNull);
        expect(testVerse.themes, isNotNull);
      });
    });

    group('JSON Serialization', () {
      test('should serialize Verse to JSON correctly', () {
        final json = testVerse.toJson();

        expect(json['id'], equals(testVerse.id));
        expect(json['gospel_id'], equals(testVerse.gospelId));
        expect(json['chapter_id'], equals(testVerse.chapterId));
        expect(json['verse_number'], equals(testVerse.verseNumber));
        expect(json['text'], equals(testVerse.text));
        expect(json['reference'], equals(testVerse.reference));
        expect(json['translation_code'], equals('NIV'));
      });

      test('should deserialize Verse from JSON correctly', () {
        final json = TestHelpers.createVerseJson();
        final verse = Verse.fromJson(json);

        expect(verse.id, equals(json['id']));
        expect(verse.gospelId, equals(json['gospel_id']));
        expect(verse.chapterId, equals(json['chapter_id']));
        expect(verse.verseNumber, equals(json['verse_number']));
        expect(verse.text, equals(json['text']));
      });

      test('should handle null optional fields in JSON', () {
        final json = {
          'id': 'test-id',
          'gospel_id': 1,
          'chapter_id': 'chapter-id',
          'verse_number': 1,
          'text': 'Test text',
          'reference': 'John 1:1',
          'translation_code': null,
          'context': null,
          'cross_references': null,
          'keywords': null,
          'themes': null,
          'created_at': null,
        };

        final verse = Verse.fromJson(json);

        expect(verse.translationCode, equals('NIV')); // Default
        expect(verse.context, isNull);
        expect(verse.crossReferences, isNull);
      });

      test('should handle array fields in JSON', () {
        final json = TestHelpers.createVerseJson();
        final verse = Verse.fromJson(json);

        expect(verse.crossReferences, isA<List<String>>());
        expect(verse.keywords, isA<List<String>>());
        expect(verse.themes, isA<List<String>>());
      });
    });

    group('Preview Property', () {
      test('should return full text if less than 100 characters', () {
        final shortVerse = TestHelpers.createTestVerse(
          text: 'Short verse text',
        );
        expect(shortVerse.preview, equals('Short verse text'));
      });

      test('should truncate text if more than 100 characters', () {
        final longText = 'A' * 150;
        final longVerse = TestHelpers.createTestVerse(text: longText);

        expect(longVerse.preview.length, equals(100));
        expect(longVerse.preview, endsWith('...'));
      });
    });

    group('isValid Property', () {
      test('should return true for valid verse', () {
        expect(testVerse.isValid, isTrue);
      });

      test('should return false if verse number is 0', () {
        final invalidVerse = TestHelpers.createTestVerse(verseNumber: 0);
        expect(invalidVerse.isValid, isFalse);
      });

      test('should return false if verse number is negative', () {
        final invalidVerse = TestHelpers.createTestVerse(verseNumber: -1);
        expect(invalidVerse.isValid, isFalse);
      });

      test('should return false if text is empty', () {
        final invalidVerse = TestHelpers.createTestVerse(text: '');
        expect(invalidVerse.isValid, isFalse);
      });
    });

    group('toString Method', () {
      test('should return formatted string with reference and preview', () {
        final result = testVerse.toString();
        expect(result, contains('John 1:1'));
        expect(result, contains('In the beginning'));
      });

      test('should truncate long text in toString', () {
        final longText = 'A' * 200;
        final longVerse = TestHelpers.createTestVerse(text: longText);
        final result = longVerse.toString();

        expect(result.length, lessThan(longText.length));
      });
    });

    group('Backward Compatibility', () {
      test('should support verseId property', () {
        expect(testVerse.verseId, equals(testVerse.verseNumber));
      });

      test('should support description property', () {
        expect(testVerse.description, equals(testVerse.text));
      });
    });

    group('Multilingual Extensions', () {
      test('should create Verse from translation JSON', () {
        final translationJson = {
          'text': 'Translated verse text',
          'translation_code': 'ESV',
          'context': 'Translated context',
        };

        final verse = VerseMultilingualExtensions.fromTranslationJson(
          'test-id',
          1,
          'chapter-id',
          1,
          'John 1:1',
          translationJson,
        );

        expect(verse.text, equals('Translated verse text'));
        expect(verse.translationCode, equals('ESV'));
        expect(verse.context, equals('Translated context'));
      });

      test('should create copy with translation fields', () {
        final updated = testVerse.withTranslation(
          text: 'New text',
          translationCode: 'KJV',
        );

        expect(updated.text, equals('New text'));
        expect(updated.translationCode, equals('KJV'));
        expect(updated.verseNumber, equals(testVerse.verseNumber));
      });

      test('should check if verse has translation data', () {
        expect(testVerse.hasTranslationData, isTrue);

        final emptyVerse = Verse(
          id: 'test-id',
          gospelId: 1,
          chapterId: 'chapter-id',
          verseNumber: 1,
          text: '',
          reference: '',
        );
        expect(emptyVerse.hasTranslationData, isFalse);
      });
    });

    group('Edge Cases', () {
      test('should handle very long verse text', () {
        final longText = 'A' * 1000;
        final longVerse = TestHelpers.createTestVerse(text: longText);

        expect(longVerse.text.length, equals(1000));
        expect(longVerse.preview.length, equals(100));
      });

      test('should handle special characters in text', () {
        final specialVerse = TestHelpers.createTestVerse(
          text: 'Text with "quotes" and \'apostrophes\' and \n newlines',
        );

        expect(specialVerse.text, contains('"'));
        expect(specialVerse.text, contains('\''));
      });

      test('should handle different translation codes', () {
        final translations = ['NIV', 'KJV', 'ESV', 'NKJV', 'NLT'];

        for (final code in translations) {
          final verse = Verse(
            id: 'test-id',
            gospelId: 1,
            chapterId: 'chapter-id',
            verseNumber: 1,
            text: 'Test',
            reference: 'John 1:1',
            translationCode: code,
          );

          expect(verse.translationCode, equals(code));
        }
      });
    });
  });
}
