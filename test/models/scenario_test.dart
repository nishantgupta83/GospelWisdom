// test/models/scenario_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/models/scenario.dart';
import '../helpers/test_helpers.dart';

void main() {
  group('Scenario Model', () {
    late Scenario testScenario;

    setUp(() {
      testScenario = TestHelpers.createTestScenario();
    });

    group('Constructor', () {
      test('should create a Scenario with all required fields', () {
        expect(testScenario.id, equals(1));
        expect(testScenario.title, isNotEmpty);
        expect(testScenario.description, isNotEmpty);
      });

      test('should create a Scenario with optional Gospel wisdom fields', () {
        expect(testScenario.category, equals('Faith'));
        expect(testScenario.gospelWisdom, isNotNull);
        expect(testScenario.heartResponse, isNotNull);
        expect(testScenario.gospelResponse, isNotNull);
      });

      test('should create a Scenario with Gospel references', () {
        expect(testScenario.gospelId, equals(1));
        expect(testScenario.chapterId, isNotNull);
        expect(testScenario.verseId, isNotNull);
        expect(testScenario.verseReference, equals('Matthew 5:3'));
      });
    });

    group('JSON Serialization', () {
      test('should serialize Scenario to JSON correctly', () {
        final json = testScenario.toJson();

        expect(json['id'], equals(testScenario.id));
        expect(json['title'], equals(testScenario.title));
        expect(json['description'], equals(testScenario.description));
        expect(json['category'], equals(testScenario.category));
        expect(json['gospel_wisdom'], equals(testScenario.gospelWisdom));
      });

      test('should deserialize Scenario from JSON correctly', () {
        final json = TestHelpers.createScenarioJson();
        final scenario = Scenario.fromJson(json);

        expect(scenario.id, equals(json['id']));
        expect(scenario.title, equals(json['title']));
        expect(scenario.description, equals(json['description']));
        expect(scenario.category, equals(json['category']));
      });

      test('should handle null optional fields in JSON', () {
        final json = {
          'id': 1,
          'title': 'Test',
          'description': 'Test desc',
          'category': null,
          'gospel_id': null,
          'chapter_id': null,
          'verse_id': null,
          'verse_reference': null,
          'heart_response': null,
          'gospel_response': null,
          'gospel_wisdom': null,
          'action_steps': null,
          'tags': null,
          'difficulty_level': null,
          'created_at': null,
          'updated_at': null,
        };

        final scenario = Scenario.fromJson(json);

        expect(scenario.category, isNull);
        expect(scenario.gospelWisdom, isNull);
        expect(scenario.actionSteps, isNull);
      });

      test('should handle array fields in JSON', () {
        final json = TestHelpers.createScenarioJson();
        final scenario = Scenario.fromJson(json);

        expect(scenario.actionSteps, isA<List<String>>());
        expect(scenario.tags, isA<List<String>>());
      });
    });

    group('Backward Compatibility Properties', () {
      test('should support chapter property (maps to gospelId)', () {
        expect(testScenario.chapter, equals(testScenario.gospelId));
      });

      test('should default chapter to 1 if gospelId is null', () {
        final scenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          gospelId: null,
        );

        expect(scenario.chapter, equals(1));
      });

      test('should support dutyResponse property (maps to gospelResponse)', () {
        expect(testScenario.dutyResponse, equals(testScenario.gospelResponse));
      });

      test('should support verse property', () {
        expect(testScenario.verse, equals(testScenario.verseReference));
      });

      test('should support verseNumber property', () {
        expect(testScenario.verseNumber, equals(testScenario.verseReference));
      });
    });

    group('Safe Accessors', () {
      test('should provide safe category accessor with fallback', () {
        final scenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          category: null,
        );

        expect(scenario.categorySafe, equals('General'));
      });

      test('should provide safe gospelWisdom accessor with fallback', () {
        final scenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          gospelWisdom: null,
        );

        expect(scenario.gospelWisdomSafe, equals(''));
      });

      test('should provide safe createdAt accessor with fallback', () {
        final scenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          createdAt: null,
        );

        expect(scenario.createdAtSafe, isA<DateTime>());
      });
    });

    group('Multilingual Extensions', () {
      test('should create Scenario from translation JSON', () {
        final translationJson = {
          'title': 'Translated Title',
          'description': 'Translated Description',
          'category': 'Translated Category',
          'heart_response': 'Translated Heart',
          'gospel_response': 'Translated Gospel',
          'gospel_wisdom': 'Translated Wisdom',
          'action_steps': ['Step A', 'Step B'],
          'tags': ['tag1', 'tag2'],
          'difficulty_level': 'Easy',
        };

        final scenario = ScenarioMultilingualExtensions.fromTranslationJson(
          1,
          1,
          'chapter-id',
          'verse-id',
          'Matthew 5:3',
          translationJson,
          DateTime(2024, 1, 1),
          DateTime(2024, 1, 1),
        );

        expect(scenario.title, equals('Translated Title'));
        expect(scenario.description, equals('Translated Description'));
        expect(scenario.gospelWisdom, equals('Translated Wisdom'));
      });

      test('should create copy with translation fields', () {
        final updated = testScenario.withTranslation(
          title: 'New Title',
          description: 'New Description',
          gospelWisdom: 'New Wisdom',
        );

        expect(updated.title, equals('New Title'));
        expect(updated.description, equals('New Description'));
        expect(updated.gospelWisdom, equals('New Wisdom'));
        expect(updated.id, equals(testScenario.id));
      });

      test('should check if scenario has complete data', () {
        expect(testScenario.hasCompleteData, isTrue);

        final incompleteScenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          heartResponse: null,
          gospelResponse: null,
          gospelWisdom: null,
        );

        expect(incompleteScenario.hasCompleteData, isFalse);
      });
    });

    group('Gospel Wisdom Integration', () {
      test('should have Gospel wisdom field populated', () {
        expect(testScenario.gospelWisdom, isNotEmpty);
        expect(testScenario.gospelWisdom, contains('Blessed'));
      });

      test('should have heart response vs gospel response', () {
        expect(testScenario.heartResponse, isNotNull);
        expect(testScenario.gospelResponse, isNotNull);
        expect(testScenario.heartResponse, isNot(equals(testScenario.gospelResponse)));
      });

      test('should have action steps for applying wisdom', () {
        expect(testScenario.actionSteps, isNotNull);
        expect(testScenario.actionSteps!.length, greaterThan(0));
        expect(testScenario.actionSteps![0], equals('Pray daily'));
      });
    });

    group('Categories and Tags', () {
      test('should support different categories', () {
        final categories = ['Faith', 'Love', 'Forgiveness', 'Courage', 'Wisdom'];

        for (final category in categories) {
          final scenario = TestHelpers.createTestScenario(category: category);
          expect(scenario.category, equals(category));
        }
      });

      test('should have searchable tags', () {
        expect(testScenario.tags, isNotNull);
        expect(testScenario.tags!.length, greaterThan(0));
        expect(testScenario.tags, contains('faith'));
      });

      test('should support difficulty levels', () {
        final levels = ['Easy', 'Medium', 'Hard'];

        for (final level in levels) {
          final scenario = Scenario(
            id: 1,
            title: 'Test',
            description: 'Test',
            difficultyLevel: level,
          );
          expect(scenario.difficultyLevel, equals(level));
        }
      });
    });

    group('Edge Cases', () {
      test('should handle minimum valid scenario', () {
        final minScenario = Scenario(
          id: 1,
          title: 'Min',
          description: 'Min desc',
        );

        expect(minScenario.id, equals(1));
        expect(minScenario.category, isNull);
        expect(minScenario.gospelWisdom, isNull);
      });

      test('should handle very long description', () {
        final longDesc = 'A' * 1000;
        final scenario = TestHelpers.createTestScenario(description: longDesc);

        expect(scenario.description.length, equals(1000));
      });

      test('should handle special characters in title', () {
        final scenario = TestHelpers.createTestScenario(
          title: 'Title with "quotes" and \'apostrophes\'',
        );

        expect(scenario.title, contains('"'));
        expect(scenario.title, contains('\''));
      });

      test('should handle empty action steps array', () {
        final scenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          actionSteps: [],
        );

        expect(scenario.actionSteps, isEmpty);
      });

      test('should handle empty tags array', () {
        final scenario = Scenario(
          id: 1,
          title: 'Test',
          description: 'Test',
          tags: [],
        );

        expect(scenario.tags, isEmpty);
      });
    });

    group('DateTime Fields', () {
      test('should handle createdAt timestamp', () {
        expect(testScenario.createdAt, isNotNull);
        expect(testScenario.createdAt, isA<DateTime>());
      });

      test('should handle updatedAt timestamp', () {
        expect(testScenario.updatedAt, isNotNull);
        expect(testScenario.updatedAt, isA<DateTime>());
      });

      test('should parse ISO8601 timestamps from JSON', () {
        final json = TestHelpers.createScenarioJson();
        final scenario = Scenario.fromJson(json);

        expect(scenario.createdAt, isNotNull);
        expect(scenario.updatedAt, isNotNull);
      });
    });
  });
}
