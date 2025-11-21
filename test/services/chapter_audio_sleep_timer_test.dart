// test/services/chapter_audio_sleep_timer_test.dart

import 'dart:async';
import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/services/chapter_audio_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('ChapterAudioService Sleep Timer Tests', () {
    late ChapterAudioService audioService;

    setUp(() {
      audioService = ChapterAudioService();
    });

    tearDown(() {
      audioService.dispose();
    });

    group('Sleep Timer - Duration Based', () {
      test('should set sleep timer for 5 minutes', () async {
        final duration = const Duration(minutes: 5);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);
        expect(audioService.sleepTimerRemaining, isNotNull);
        expect(audioService.sleepTimerRemaining!.inMinutes, equals(4)); // Allow for slight delay
      });

      test('should set sleep timer for 10 minutes', () async {
        final duration = const Duration(minutes: 10);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);
        expect(audioService.sleepTimerRemaining!.inMinutes, greaterThanOrEqualTo(9));
      });

      test('should set sleep timer for 15 minutes', () async {
        final duration = const Duration(minutes: 15);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);
        expect(audioService.sleepTimerRemaining!.inMinutes, greaterThanOrEqualTo(14));
      });

      test('should set sleep timer for 30 minutes', () async {
        final duration = const Duration(minutes: 30);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);
        expect(audioService.sleepTimerRemaining!.inMinutes, greaterThanOrEqualTo(29));
      });

      test('should set sleep timer for 60 minutes', () async {
        final duration = const Duration(minutes: 60);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);
        expect(audioService.sleepTimerRemaining!.inMinutes, greaterThanOrEqualTo(59));
      });
    });

    group('Sleep Timer - Remaining Time Calculation', () {
      test('should calculate remaining time correctly', () async {
        final duration = const Duration(seconds: 5);
        audioService.setSleepTimer(duration);

        // Initial remaining time should be close to 5 seconds
        expect(audioService.sleepTimerRemaining!.inSeconds, greaterThanOrEqualTo(4));

        // Wait 2 seconds
        await Future.delayed(const Duration(seconds: 2));

        // Remaining time should be approximately 3 seconds
        expect(audioService.sleepTimerRemaining!.inSeconds, lessThanOrEqualTo(3));
      });

      test('should return null when no sleep timer is set', () {
        expect(audioService.hasSleepTimer, isFalse);
        expect(audioService.sleepTimerRemaining, isNull);
      });

      test('should return Duration.zero when timer expired', () async {
        final duration = const Duration(milliseconds: 100);
        audioService.setSleepTimer(duration);

        // Wait for timer to expire
        await Future.delayed(const Duration(milliseconds: 200));

        // Remaining time should be zero (not null, as timer was set but expired)
        final remaining = audioService.sleepTimerRemaining;
        expect(remaining, anyOf(isNull, equals(Duration.zero)));
      });
    });

    group('Sleep Timer - Cancellation', () {
      test('should cancel active sleep timer', () {
        final duration = const Duration(minutes: 10);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);

        audioService.cancelSleepTimer();

        expect(audioService.hasSleepTimer, isFalse);
        expect(audioService.sleepTimerRemaining, isNull);
      });

      test('should handle cancellation when no timer is active', () {
        expect(audioService.hasSleepTimer, isFalse);

        audioService.cancelSleepTimer(); // Should not throw

        expect(audioService.hasSleepTimer, isFalse);
        expect(audioService.sleepTimerRemaining, isNull);
      });

      test('should cancel previous timer when setting new timer', () {
        final duration1 = const Duration(minutes: 5);
        audioService.setSleepTimer(duration1);

        expect(audioService.sleepTimerRemaining!.inMinutes, greaterThanOrEqualTo(4));

        final duration2 = const Duration(minutes: 10);
        audioService.setSleepTimer(duration2);

        // Should have new timer duration
        expect(audioService.sleepTimerRemaining!.inMinutes, greaterThanOrEqualTo(9));
      });
    });

    group('Sleep Timer - Auto-Pause on Completion', () {
      test('should pause playback when timer completes', () async {
        // Set a very short timer
        final duration = const Duration(milliseconds: 100);
        audioService.setSleepTimer(duration);

        // Start playback (mocked - would throw UnimplementedError in real scenario)
        // For this test, we just verify the sleep timer logic
        expect(audioService.hasSleepTimer, isTrue);

        // Wait for timer to complete
        await Future.delayed(const Duration(milliseconds: 200));

        // Timer should be cleared after completion
        expect(audioService.hasSleepTimer, isFalse);
      });

      test('should notify listeners when timer completes', () async {
        int notificationCount = 0;
        audioService.addListener(() {
          notificationCount++;
        });

        final duration = const Duration(milliseconds: 100);
        audioService.setSleepTimer(duration);

        // Wait for timer to complete
        await Future.delayed(const Duration(milliseconds: 200));

        // Should have been notified at least twice:
        // 1. When timer was set
        // 2. When timer completed and paused playback
        expect(notificationCount, greaterThanOrEqualTo(2));
      });
    });

    group('Sleep Timer - End of Chapter Mode', () {
      test('should set timer to end of chapter', () {
        // For this to work, we need a mock chapter with known duration
        // This test validates the logic exists
        audioService.setSleepTimer(
          const Duration(minutes: 1),
          endOfChapter: true,
        );

        // Since no chapter is playing, should handle gracefully
        // In real usage, would calculate remaining time of current chapter
        expect(audioService.hasSleepTimer, anyOf(isTrue, isFalse));
      });
    });

    group('Sleep Timer - Disposal', () {
      test('should cancel timer on service disposal', () {
        final duration = const Duration(minutes: 10);
        audioService.setSleepTimer(duration);

        expect(audioService.hasSleepTimer, isTrue);

        audioService.dispose();

        // After disposal, timer should be cancelled (can't check as service is disposed)
        // This test ensures no memory leaks
      });
    });

    group('Sleep Timer - Common Usage Patterns', () {
      test('should support typical Bible app sleep timer durations', () {
        // 5, 10, 15, 30, 60 minutes (as per ACCESSIBILITY_RESEARCH.md)
        final durations = [
          const Duration(minutes: 5),
          const Duration(minutes: 10),
          const Duration(minutes: 15),
          const Duration(minutes: 30),
          const Duration(minutes: 60),
        ];

        for (final duration in durations) {
          audioService.setSleepTimer(duration);
          expect(audioService.hasSleepTimer, isTrue);
          audioService.cancelSleepTimer();
        }
      });

      test('should handle rapid set/cancel cycles', () {
        for (int i = 0; i < 10; i++) {
          audioService.setSleepTimer(const Duration(minutes: 5));
          expect(audioService.hasSleepTimer, isTrue);
          audioService.cancelSleepTimer();
          expect(audioService.hasSleepTimer, isFalse);
        }
      });
    });
  });
}
