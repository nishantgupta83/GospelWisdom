// test/services/haptic_feedback_service_test.dart

import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/services/haptic_feedback_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('HapticFeedbackService Tests', () {
    late List<MethodCall> hapticCalls;

    setUp(() {
      hapticCalls = [];

      // Mock the platform channel for HapticFeedback
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(SystemChannels.platform, (call) async {
        hapticCalls.add(call);
        return null;
      });
    });

    tearDown(() {
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
          .setMockMethodCallHandler(SystemChannels.platform, null);
      hapticCalls.clear();
    });

    group('Singleton Pattern', () {
      test('should return same instance', () {
        final instance1 = HapticFeedbackService();
        final instance2 = HapticFeedbackService();

        expect(instance1, equals(instance2));
      });
    });

    group('Light Impact', () {
      test('should trigger light impact haptic', () {
        HapticFeedbackService.light();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.lightImpact'));
      });

      test('should be called for navigation interactions', () {
        // Simulating card tap
        HapticFeedbackService.light();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, contains('HapticFeedback'));
      });
    });

    group('Medium Impact', () {
      test('should trigger medium impact haptic', () {
        HapticFeedbackService.medium();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.mediumImpact'));
      });

      test('should be called for bookmarking actions', () {
        // Simulating bookmark action
        HapticFeedbackService.medium();

        expect(hapticCalls.length, equals(1));
      });
    });

    group('Heavy Impact', () {
      test('should trigger heavy impact haptic', () {
        HapticFeedbackService.heavy();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.heavyImpact'));
      });

      test('should be reserved for major milestones', () {
        // Simulating achievement unlock
        HapticFeedbackService.heavy();

        expect(hapticCalls.length, equals(1));
      });
    });

    group('Selection Feedback', () {
      test('should trigger selection click haptic', () {
        HapticFeedbackService.selection();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.selectionClick'));
      });
    });

    group('Success Feedback', () {
      test('should trigger success haptic', () {
        HapticFeedbackService.success();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
      });

      test('should use medium impact for success', () {
        HapticFeedbackService.success();

        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.mediumImpact'));
      });
    });

    group('Warning Feedback', () {
      test('should trigger warning haptic', () {
        HapticFeedbackService.warning();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
      });

      test('should use light impact for warnings', () {
        HapticFeedbackService.warning();

        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.lightImpact'));
      });
    });

    group('Error Feedback', () {
      test('should trigger error haptic', () {
        HapticFeedbackService.error();

        expect(hapticCalls.length, equals(1));
        expect(hapticCalls[0].method, equals('HapticFeedback.vibrate'));
      });

      test('should use heavy impact for errors', () {
        HapticFeedbackService.error();

        expect(hapticCalls[0].arguments, equals('HapticFeedbackType.heavyImpact'));
      });
    });

    group('Sequential Calls', () {
      test('should handle multiple sequential haptic calls', () {
        HapticFeedbackService.light();
        HapticFeedbackService.medium();
        HapticFeedbackService.heavy();

        expect(hapticCalls.length, equals(3));
        expect(hapticCalls[0].arguments, contains('light'));
        expect(hapticCalls[1].arguments, contains('medium'));
        expect(hapticCalls[2].arguments, contains('heavy'));
      });

      test('should not interfere with each other', () {
        HapticFeedbackService.light();
        HapticFeedbackService.light();

        expect(hapticCalls.length, equals(2));
        expect(hapticCalls[0].arguments, equals(hapticCalls[1].arguments));
      });
    });

    group('Apple HIG Compliance', () {
      test('should provide light impact for minor interactions', () {
        // Card tap, tab switch
        HapticFeedbackService.light();

        expect(hapticCalls[0].arguments, contains('light'));
      });

      test('should provide medium impact for important actions', () {
        // Bookmark, note creation
        HapticFeedbackService.medium();

        expect(hapticCalls[0].arguments, contains('medium'));
      });

      test('should provide heavy impact for major milestones', () {
        // Chapter completion, achievement
        HapticFeedbackService.heavy();

        expect(hapticCalls[0].arguments, contains('heavy'));
      });

      test('should provide selection for picker scrolling', () {
        // Picker scroll, rating adjustment
        HapticFeedbackService.selection();

        expect(hapticCalls[0].arguments, contains('selection'));
      });
    });

    group('Usage Pattern Validation', () {
      test('should support strategic usage to prevent fatigue', () {
        // Simulating user flow: tap card (light) -> bookmark (medium)
        HapticFeedbackService.light();
        HapticFeedbackService.medium();

        expect(hapticCalls.length, equals(2));
        // Different intensities for different actions prevents fatigue
        expect(hapticCalls[0].arguments, isNot(equals(hapticCalls[1].arguments)));
      });

      test('should allow same haptic type for repeated actions', () {
        // Multiple card taps should all use light
        HapticFeedbackService.light();
        HapticFeedbackService.light();
        HapticFeedbackService.light();

        expect(hapticCalls.length, equals(3));
        expect(hapticCalls.every((call) => call.arguments.contains('light')), isTrue);
      });
    });

    group('Error Handling', () {
      test('should not throw errors when platform unavailable', () {
        // Clear mock to simulate unavailable platform
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
            .setMockMethodCallHandler(SystemChannels.platform, null);

        expect(() => HapticFeedbackService.light(), returnsNormally);
        expect(() => HapticFeedbackService.medium(), returnsNormally);
        expect(() => HapticFeedbackService.heavy(), returnsNormally);
      });
    });
  });
}
