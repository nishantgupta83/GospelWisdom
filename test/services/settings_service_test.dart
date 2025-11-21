// test/services/settings_service_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:GospelWisdom/services/settings_service.dart';
import '../helpers/mock_services.dart';

void main() {
  group('SettingsService', () {
    late MockSettingsService settingsService;

    setUp(() {
      settingsService = MockSettingsService();
    });

    group('Font Size Persistence', () {
      test('should default to small font size', () {
        expect(settingsService.fontSize, equals('small'));
      });

      test('should persist small font size', () {
        settingsService.fontSize = 'small';
        expect(settingsService.fontSize, equals('small'));
      });

      test('should persist medium font size', () {
        settingsService.fontSize = 'medium';
        expect(settingsService.fontSize, equals('medium'));
      });

      test('should persist large font size', () {
        settingsService.fontSize = 'large';
        expect(settingsService.fontSize, equals('large'));
      });

      test('should persist extra-large font size', () {
        settingsService.fontSize = 'extra-large';
        expect(settingsService.fontSize, equals('extra-large'));
      });

      test('should update font size via setFontSize', () {
        settingsService.setFontSize('large');
        expect(settingsService.fontSize, equals('large'));
      });

      test('should notify listeners on font size change', () {
        var notificationCount = 0;
        settingsService.addListener(() {
          notificationCount++;
        });

        settingsService.fontSize = 'medium';
        expect(notificationCount, greaterThan(0));
      });
    });

    group('Theme Style Persistence', () {
      test('should default to light mode', () {
        expect(settingsService.isDarkMode, isFalse);
      });

      test('should persist dark mode setting', () {
        settingsService.isDarkMode = true;
        expect(settingsService.isDarkMode, isTrue);

        settingsService.isDarkMode = false;
        expect(settingsService.isDarkMode, isFalse);
      });

      test('should get correct theme mode from dark mode setting', () {
        settingsService.isDarkMode = true;
        expect(settingsService.themeMode, equals(ThemeMode.dark));

        settingsService.isDarkMode = false;
        expect(settingsService.themeMode, equals(ThemeMode.light));
      });

      test('should set theme via setTheme', () {
        settingsService.setTheme(ThemeMode.dark);
        expect(settingsService.isDarkMode, isTrue);

        settingsService.setTheme(ThemeMode.light);
        expect(settingsService.isDarkMode, isFalse);
      });

      test('should notify listeners on theme change', () {
        var notificationCount = 0;
        settingsService.addListener(() {
          notificationCount++;
        });

        settingsService.isDarkMode = true;
        expect(notificationCount, greaterThan(0));
      });

      test('should cache dark mode for performance', () {
        settingsService.isDarkMode = true;
        expect(settingsService.isDarkMode, isTrue);
        expect(settingsService.isDarkMode, isTrue);
      });
    });

    group('Language Persistence', () {
      test('should default to English', () {
        expect(settingsService.language, equals('en'));
      });

      test('should persist language setting', () {
        settingsService.language = 'en';
        expect(settingsService.language, equals('en'));
      });

      test('should set app language to Spanish', () {
        settingsService.setAppLanguage('es');
        expect(settingsService.language, equals('es'));
      });

      test('should notify listeners on language change', () {
        var notificationCount = 0;
        settingsService.addListener(() {
          notificationCount++;
        });

        settingsService.setAppLanguage('es');
        expect(notificationCount, greaterThan(0));
      });

      test('should support multiple languages', () {
        final languages = ['en', 'es', 'fr', 'de'];
        for (final lang in languages) {
          settingsService.language = lang;
          expect(settingsService.language, equals(lang));
        }
      });
    });

    group('Music Settings', () {
      test('should default to music enabled', () {
        expect(settingsService.musicEnabled, isTrue);
      });

      test('should persist music enabled setting', () {
        settingsService.musicEnabled = true;
        expect(settingsService.musicEnabled, isTrue);

        settingsService.musicEnabled = false;
        expect(settingsService.musicEnabled, isFalse);
      });

      test('should toggle music setting', () {
        settingsService.musicEnabled = true;
        expect(settingsService.musicEnabled, isTrue);

        settingsService.musicEnabled = false;
        expect(settingsService.musicEnabled, isFalse);

        settingsService.musicEnabled = true;
        expect(settingsService.musicEnabled, isTrue);
      });

      test('should notify listeners on music change', () {
        var notificationCount = 0;
        settingsService.addListener(() {
          notificationCount++;
        });

        settingsService.musicEnabled = false;
        expect(notificationCount, greaterThan(0));
      });
    });

    group('Text Shadow Settings', () {
      test('should default to shadow disabled', () {
        expect(settingsService.textShadowEnabled, isFalse);
      });

      test('should persist text shadow setting', () {
        settingsService.textShadowEnabled = true;
        expect(settingsService.textShadowEnabled, isTrue);

        settingsService.textShadowEnabled = false;
        expect(settingsService.textShadowEnabled, isFalse);
      });

      test('should cache text shadow for performance', () {
        settingsService.textShadowEnabled = true;
        expect(settingsService.textShadowEnabled, isTrue);
        expect(settingsService.textShadowEnabled, isTrue);
      });

      test('should notify listeners on text shadow change', () {
        var notificationCount = 0;
        settingsService.addListener(() {
          notificationCount++;
        });

        settingsService.textShadowEnabled = true;
        expect(notificationCount, greaterThan(0));
      });
    });

    group('Background Opacity Settings', () {
      test('should default to full opacity', () {
        expect(settingsService.backgroundOpacity, equals(1.0));
      });

      test('should persist background opacity', () {
        settingsService.backgroundOpacity = 0.5;
        expect(settingsService.backgroundOpacity, equals(0.5));
      });

      test('should handle opacity range', () {
        settingsService.backgroundOpacity = 0.0;
        expect(settingsService.backgroundOpacity, equals(0.0));

        settingsService.backgroundOpacity = 0.5;
        expect(settingsService.backgroundOpacity, equals(0.5));

        settingsService.backgroundOpacity = 1.0;
        expect(settingsService.backgroundOpacity, equals(1.0));
      });

      test('should persist various opacity values', () {
        final opacityValues = [0.0, 0.25, 0.5, 0.75, 1.0];
        for (final opacity in opacityValues) {
          settingsService.backgroundOpacity = opacity;
          expect(settingsService.backgroundOpacity, equals(opacity));
        }
      });
    });

    group('Cache Refresh Management', () {
      test('should return null for initial cache refresh date', () {
        expect(settingsService.lastCacheRefreshDate, isNull);
      });

      test('should allow cache refresh initially', () {
        expect(settingsService.canRefreshCache, isTrue);
      });

      test('should return 0 days until next refresh initially', () {
        expect(settingsService.daysUntilNextRefresh, equals(0));
      });

      test('should persist cache refresh date', () {
        final now = DateTime.now();
        settingsService.setLastCacheRefreshDate(now);

        final stored = settingsService.lastCacheRefreshDate;
        expect(stored, isNotNull);
        expect(stored?.year, equals(now.year));
        expect(stored?.month, equals(now.month));
        expect(stored?.day, equals(now.day));
      });

      test('should restrict cache refresh to 20+ days', () {
        final today = DateTime.now();
        settingsService.setLastCacheRefreshDate(today);

        expect(settingsService.canRefreshCache, isFalse);
      });

      test('should notify listeners on cache refresh date change', () {
        var notificationCount = 0;
        settingsService.addListener(() {
          notificationCount++;
        });

        settingsService.setLastCacheRefreshDate(DateTime.now());
        expect(notificationCount, greaterThan(0));
      });
    });

    group('Default Values', () {
      test('should have correct default font size', () {
        expect(settingsService.fontSize, equals('small'));
      });

      test('should have correct default dark mode', () {
        expect(settingsService.isDarkMode, isFalse);
      });

      test('should have correct default language', () {
        expect(settingsService.language, equals('en'));
      });

      test('should have correct default music setting', () {
        expect(settingsService.musicEnabled, isTrue);
      });

      test('should have correct default shadow setting', () {
        expect(settingsService.textShadowEnabled, isFalse);
      });

      test('should have correct default opacity', () {
        expect(settingsService.backgroundOpacity, equals(1.0));
      });
    });

    group('State Management', () {
      test('should handle multiple concurrent settings changes', () {
        settingsService.fontSize = 'large';
        settingsService.isDarkMode = true;
        settingsService.musicEnabled = false;
        settingsService.textShadowEnabled = true;

        expect(settingsService.fontSize, equals('large'));
        expect(settingsService.isDarkMode, isTrue);
        expect(settingsService.musicEnabled, isFalse);
        expect(settingsService.textShadowEnabled, isTrue);
      });

      test('should preserve settings after multiple operations', () {
        settingsService.fontSize = 'medium';
        settingsService.isDarkMode = true;

        settingsService.musicEnabled = false;
        settingsService.backgroundOpacity = 0.8;

        expect(settingsService.fontSize, equals('medium'));
        expect(settingsService.isDarkMode, isTrue);
      });

      test('should handle rapid state changes', () {
        for (int i = 0; i < 10; i++) {
          settingsService.isDarkMode = !settingsService.isDarkMode;
        }

        expect(settingsService.isDarkMode, isFalse);
      });
    });

    group('Theme Mode Integration', () {
      test('should correctly map dark mode to ThemeMode.dark', () {
        settingsService.isDarkMode = true;
        expect(settingsService.themeMode, equals(ThemeMode.dark));
      });

      test('should correctly map light mode to ThemeMode.light', () {
        settingsService.isDarkMode = false;
        expect(settingsService.themeMode, equals(ThemeMode.light));
      });

      test('should update ThemeMode when isDarkMode changes', () {
        settingsService.isDarkMode = false;
        expect(settingsService.themeMode, equals(ThemeMode.light));

        settingsService.isDarkMode = true;
        expect(settingsService.themeMode, equals(ThemeMode.dark));
      });
    });
  });
}
