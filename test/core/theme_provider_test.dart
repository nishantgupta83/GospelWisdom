// test/core/theme_provider_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/core/theme/theme_provider.dart';
import 'package:GospelWisdom/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import '../helpers/mock_services.dart';

void main() {
  group('ThemeProvider', () {
    late MockThemeProvider themeProvider;

    setUp(() {
      themeProvider = MockThemeProvider();
    });

    group('Initialization', () {
      test('should initialize with default values', () {
        expect(themeProvider.isDark, isFalse);
        expect(themeProvider.fontPref, equals('medium'));
        expect(themeProvider.shadowEnabled, isFalse);
        expect(themeProvider.backgroundOpacity, equals(1.0));
        expect(themeProvider.themeStyle, equals(ThemeStyle.light));
      });

      test('should have text scale of 1.0 for medium font', () {
        expect(themeProvider.textScale, equals(1.0));
      });

      test('should return light theme mode by default', () {
        expect(themeProvider.themeMode, equals(ThemeMode.light));
      });
    });

    group('Theme Style Enum', () {
      test('should have 4 theme styles', () {
        expect(ThemeStyle.values.length, equals(4));
        expect(ThemeStyle.values, contains(ThemeStyle.light));
        expect(ThemeStyle.values, contains(ThemeStyle.dark));
        expect(ThemeStyle.values, contains(ThemeStyle.paper));
        expect(ThemeStyle.values, contains(ThemeStyle.sage));
      });
    });

    group('Dark Mode Toggle', () {
      test('should toggle dark mode', () async {
        expect(themeProvider.isDark, isFalse);

        await themeProvider.toggleDarkMode();
        expect(themeProvider.isDark, isTrue);
        expect(themeProvider.themeMode, equals(ThemeMode.dark));

        await themeProvider.toggleDarkMode();
        expect(themeProvider.isDark, isFalse);
        expect(themeProvider.themeMode, equals(ThemeMode.light));
      });

      test('should update theme mode when dark mode changes', () async {
        await themeProvider.updateTheme(isDark: true);
        expect(themeProvider.themeMode, equals(ThemeMode.dark));

        await themeProvider.updateTheme(isDark: false);
        expect(themeProvider.themeMode, equals(ThemeMode.light));
      });
    });

    group('Font Size (4 Sizes)', () {
      test('should set small font size', () async {
        await themeProvider.setFontSize('small');
        expect(themeProvider.fontPref, equals('small'));
      });

      test('should set medium font size', () async {
        await themeProvider.setFontSize('medium');
        expect(themeProvider.fontPref, equals('medium'));
      });

      test('should set large font size', () async {
        await themeProvider.setFontSize('large');
        expect(themeProvider.fontPref, equals('large'));
      });

      test('should set extra-large font size', () async {
        await themeProvider.setFontSize('extra-large');
        expect(themeProvider.fontPref, equals('extra-large'));
      });

      test('should support all 4 font sizes via updateTheme', () async {
        final sizes = ['small', 'medium', 'large', 'extra-large'];

        for (final size in sizes) {
          await themeProvider.updateTheme(fontPref: size);
          expect(themeProvider.fontPref, equals(size));
        }
      });
    });

    group('Theme Style Switching', () {
      test('should switch to light theme', () async {
        await themeProvider.setThemeStyle(ThemeStyle.light);
        expect(themeProvider.themeStyle, equals(ThemeStyle.light));
      });

      test('should switch to dark theme', () async {
        await themeProvider.setThemeStyle(ThemeStyle.dark);
        expect(themeProvider.themeStyle, equals(ThemeStyle.dark));
      });

      test('should switch to paper theme', () async {
        await themeProvider.setThemeStyle(ThemeStyle.paper);
        expect(themeProvider.themeStyle, equals(ThemeStyle.paper));
      });

      test('should switch to sage theme', () async {
        await themeProvider.setThemeStyle(ThemeStyle.sage);
        expect(themeProvider.themeStyle, equals(ThemeStyle.sage));
      });

      test('should support all 4 theme styles via updateTheme', () async {
        await themeProvider.updateTheme(themeStyle: ThemeStyle.light);
        expect(themeProvider.themeStyle, equals(ThemeStyle.light));

        await themeProvider.updateTheme(themeStyle: ThemeStyle.dark);
        expect(themeProvider.themeStyle, equals(ThemeStyle.dark));

        await themeProvider.updateTheme(themeStyle: ThemeStyle.paper);
        expect(themeProvider.themeStyle, equals(ThemeStyle.paper));

        await themeProvider.updateTheme(themeStyle: ThemeStyle.sage);
        expect(themeProvider.themeStyle, equals(ThemeStyle.sage));
      });
    });

    group('Shadow Toggle', () {
      test('should toggle shadow', () async {
        expect(themeProvider.shadowEnabled, isFalse);

        await themeProvider.toggleShadow();
        expect(themeProvider.shadowEnabled, isTrue);

        await themeProvider.toggleShadow();
        expect(themeProvider.shadowEnabled, isFalse);
      });

      test('should update shadow via updateTheme', () async {
        await themeProvider.updateTheme(shadowEnabled: true);
        expect(themeProvider.shadowEnabled, isTrue);

        await themeProvider.updateTheme(shadowEnabled: false);
        expect(themeProvider.shadowEnabled, isFalse);
      });
    });

    group('Background Opacity', () {
      test('should set background opacity', () async {
        await themeProvider.setBackgroundOpacity(0.5);
        expect(themeProvider.backgroundOpacity, equals(0.5));
      });

      test('should update opacity via updateTheme', () async {
        await themeProvider.updateTheme(backgroundOpacity: 0.8);
        expect(themeProvider.backgroundOpacity, equals(0.8));
      });

      test('should handle opacity values from 0.0 to 1.0', () async {
        await themeProvider.setBackgroundOpacity(0.0);
        expect(themeProvider.backgroundOpacity, equals(0.0));

        await themeProvider.setBackgroundOpacity(1.0);
        expect(themeProvider.backgroundOpacity, equals(1.0));

        await themeProvider.setBackgroundOpacity(0.5);
        expect(themeProvider.backgroundOpacity, equals(0.5));
      });
    });

    group('Current Theme', () {
      test('should return ThemeData for current theme', () {
        expect(themeProvider.currentTheme, isA<ThemeData>());
      });

      test('should return light theme when not in dark mode', () async {
        await themeProvider.updateTheme(isDark: false, themeStyle: ThemeStyle.light);
        final theme = themeProvider.currentTheme;
        expect(theme.brightness, equals(Brightness.light));
      });

      test('should return dark theme when in dark mode', () async {
        await themeProvider.updateTheme(isDark: true, themeStyle: ThemeStyle.dark);
        final theme = themeProvider.currentTheme;
        expect(theme.brightness, equals(Brightness.dark));
      });
    });

    group('Legacy Theme Support', () {
      test('should provide lightTheme getter', () {
        expect(themeProvider.lightTheme, isA<ThemeData>());
      });

      test('should provide darkTheme getter', () {
        expect(themeProvider.darkTheme, isA<ThemeData>());
      });
    });

    group('Multiple Updates', () {
      test('should handle multiple theme updates', () async {
        await themeProvider.updateTheme(
          isDark: true,
          fontPref: 'large',
          shadowEnabled: true,
          backgroundOpacity: 0.9,
          themeStyle: ThemeStyle.paper,
        );

        expect(themeProvider.isDark, isTrue);
        expect(themeProvider.fontPref, equals('large'));
        expect(themeProvider.shadowEnabled, isTrue);
        expect(themeProvider.backgroundOpacity, equals(0.9));
        expect(themeProvider.themeStyle, equals(ThemeStyle.paper));
      });

      test('should handle partial updates', () async {
        await themeProvider.updateTheme(isDark: true);
        expect(themeProvider.isDark, isTrue);
        expect(themeProvider.fontPref, equals('medium')); // Unchanged

        await themeProvider.updateTheme(fontPref: 'large');
        expect(themeProvider.isDark, isTrue); // Still true
        expect(themeProvider.fontPref, equals('large'));
      });
    });

    group('Hot Reload Support', () {
      test('should allow rapid theme switching', () async {
        for (int i = 0; i < 10; i++) {
          await themeProvider.toggleDarkMode();
        }
        expect(themeProvider.isDark, isFalse); // Back to initial state
      });

      test('should handle rapid font size changes', () async {
        final sizes = ['small', 'medium', 'large', 'extra-large'];

        for (int i = 0; i < 20; i++) {
          await themeProvider.setFontSize(sizes[i % sizes.length]);
        }

        expect(themeProvider.fontPref, equals('extra-large')); // 20 % 4 = 0, but 19 % 4 = 3, which is 'extra-large'
      });
    });
  });
}
