// test/core/app_config_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/core/app_config.dart';

void main() {
  group('AppConfig', () {
    group('App Information', () {
      test('should have correct app name', () {
        expect(AppConfig.appName, equals('Gospel'));
      });

      test('should have correct app title', () {
        expect(AppConfig.appTitle, equals('Gospel Guide'));
      });

      test('should have version and build number', () {
        expect(AppConfig.version, isNotEmpty);
        expect(AppConfig.buildNumber, greaterThan(0));
      });

      test('should generate full version string', () {
        final fullVersion = AppConfig.fullVersion;
        expect(fullVersion, contains(AppConfig.version));
        expect(fullVersion, contains('+'));
        expect(fullVersion, contains(AppConfig.buildNumber.toString()));
      });
    });

    group('Font Scales (4 sizes)', () {
      test('should have 4 distinct font scales', () {
        expect(AppConfig.smallTextScale, equals(0.85));
        expect(AppConfig.mediumTextScale, equals(1.0));
        expect(AppConfig.largeTextScale, equals(1.15));
        expect(AppConfig.extraLargeTextScale, equals(1.30));
      });

      test('should get correct text scale for small', () {
        expect(AppConfig.getTextScale('small'), equals(0.85));
      });

      test('should get correct text scale for medium (default)', () {
        expect(AppConfig.getTextScale('medium'), equals(1.0));
      });

      test('should get correct text scale for large', () {
        expect(AppConfig.getTextScale('large'), equals(1.15));
      });

      test('should get correct text scale for extra-large', () {
        expect(AppConfig.getTextScale('extra-large'), equals(1.30));
      });

      test('should default to medium for unknown size', () {
        expect(AppConfig.getTextScale('unknown'), equals(1.0));
        expect(AppConfig.getTextScale(''), equals(1.0));
      });

      test('should ensure font scales are progressive', () {
        expect(AppConfig.smallTextScale, lessThan(AppConfig.mediumTextScale));
        expect(AppConfig.mediumTextScale, lessThan(AppConfig.largeTextScale));
        expect(AppConfig.largeTextScale, lessThan(AppConfig.extraLargeTextScale));
      });
    });

    group('UI Configuration', () {
      test('should have default elevation', () {
        expect(AppConfig.defaultElevation, equals(8.0));
      });

      test('should have card border radius', () {
        expect(AppConfig.cardBorderRadius, equals(14.0));
      });

      test('should have card margin', () {
        expect(AppConfig.cardMargin, isA<EdgeInsets>());
        expect(AppConfig.cardMargin, equals(const EdgeInsets.symmetric(vertical: 8)));
      });

      test('should have navigation bar margin', () {
        expect(AppConfig.navBarMargin, isA<EdgeInsets>());
        expect(AppConfig.navBarMargin, equals(const EdgeInsets.only(bottom: 10)));
      });
    });

    group('Shadow Configuration', () {
      test('should have iOS shadow blur values', () {
        expect(AppConfig.iOSHeaderShadowBlur, equals(3.0));
        expect(AppConfig.iOSBodyShadowBlur, equals(2.0));
        expect(AppConfig.iOSLabelShadowBlur, equals(1.5));
      });

      test('should have Android shadow blur values', () {
        expect(AppConfig.androidHeaderShadowBlur, equals(2.0));
        expect(AppConfig.androidBodyShadowBlur, equals(1.5));
        expect(AppConfig.androidLabelShadowBlur, equals(1.0));
      });

      test('should have different shadow values for platforms', () {
        expect(AppConfig.iOSHeaderShadowBlur, greaterThan(AppConfig.androidHeaderShadowBlur));
        expect(AppConfig.iOSBodyShadowBlur, greaterThan(AppConfig.androidBodyShadowBlur));
        expect(AppConfig.iOSLabelShadowBlur, greaterThan(AppConfig.androidLabelShadowBlur));
      });
    });

    group('Color Configuration', () {
      test('should have transparent color', () {
        expect(AppConfig.transparentColor, equals(Colors.transparent));
      });

      test('should have selected nav color', () {
        expect(AppConfig.selectedNavColor, equals(Colors.brown));
      });

      test('should have splash icon color', () {
        expect(AppConfig.splashIconColor, equals(Colors.white));
      });

      test('should have light theme colors', () {
        expect(AppConfig.lightThemeBaseColor, isA<Color>());
        expect(AppConfig.lightThemeGradientColor, isA<Color>());
        expect(AppConfig.lightThemeAccentColor, isA<Color>());
      });

      test('should have dark theme colors', () {
        expect(AppConfig.darkThemeBaseColor, isA<Color>());
        expect(AppConfig.darkThemeMidColor, isA<Color>());
        expect(AppConfig.darkThemeAccentColor, isA<Color>());
        expect(AppConfig.darkThemeEdgeColor, isA<Color>());
      });
    });

    group('Default Values', () {
      test('should have default dark mode disabled', () {
        expect(AppConfig.defaultDarkMode, isFalse);
      });

      test('should have default font size as medium', () {
        expect(AppConfig.defaultFontSize, equals('medium'));
      });

      test('should have default music enabled', () {
        expect(AppConfig.defaultMusicEnabled, isTrue);
      });

      test('should have default shadow disabled', () {
        expect(AppConfig.defaultShadowEnabled, isFalse);
      });

      test('should have default background opacity at 1.0', () {
        expect(AppConfig.defaultBackgroundOpacity, equals(1.0));
      });

      test('should have default language as English', () {
        expect(AppConfig.defaultLanguage, equals('en'));
      });
    });

    group('Timing Configuration', () {
      test('should have splash duration', () {
        expect(AppConfig.splashDuration, equals(const Duration(seconds: 3)));
      });

      test('should have animation duration', () {
        expect(AppConfig.animationDuration, equals(const Duration(milliseconds: 300)));
      });

      test('should have debounce delay', () {
        expect(AppConfig.debounceDelay, equals(const Duration(milliseconds: 150)));
      });
    });

    group('Localization', () {
      test('should support English locale', () {
        expect(AppConfig.supportedLocales, contains(const Locale('en', '')));
      });

      test('should have at least one supported locale', () {
        expect(AppConfig.supportedLocales.length, greaterThan(0));
      });
    });

    group('Performance Configuration', () {
      test('should have max scenario preload limit', () {
        expect(AppConfig.maxScenarioPreload, equals(100));
      });

      test('should have connection timeout', () {
        expect(AppConfig.connectionTimeout, equals(const Duration(seconds: 30)));
      });

      test('should have service init timeout', () {
        expect(AppConfig.serviceInitTimeout, equals(const Duration(seconds: 10)));
      });
    });

    group('Feature Flags', () {
      test('should have debug mode flag', () {
        expect(AppConfig.debugMode, isA<bool>());
      });

      test('should check if app is in debug mode', () {
        expect(AppConfig.isDebugMode, equals(AppConfig.debugMode));
      });

      test('should have performance tracking flag', () {
        expect(AppConfig.enablePerformanceTracking, isA<bool>());
      });

      test('should have crash reporting flag', () {
        expect(AppConfig.enableCrashReporting, isA<bool>());
      });

      test('should have analytics flag', () {
        expect(AppConfig.enableAnalytics, isA<bool>());
      });

      test('should have all feature flags disabled for production', () {
        // This ensures production safety
        expect(AppConfig.debugMode, isFalse);
        expect(AppConfig.enablePerformanceTracking, isFalse);
        expect(AppConfig.enableCrashReporting, isFalse);
        expect(AppConfig.enableAnalytics, isFalse);
      });
    });

    group('Display Name', () {
      test('should return app name as display name', () {
        expect(AppConfig.displayName, equals(AppConfig.appName));
      });
    });

    group('Gradient Stops', () {
      test('should have light theme gradient stops', () {
        expect(AppConfig.lightThemeGradientStops.length, equals(3));
        expect(AppConfig.lightThemeGradientStops, equals([0.0, 0.7, 1.0]));
      });

      test('should have dark theme gradient stops', () {
        expect(AppConfig.darkThemeGradientStops.length, equals(4));
        expect(AppConfig.darkThemeGradientStops, equals([0.0, 0.4, 0.7, 1.0]));
      });

      test('should have gradient stops in ascending order', () {
        for (int i = 0; i < AppConfig.lightThemeGradientStops.length - 1; i++) {
          expect(
            AppConfig.lightThemeGradientStops[i],
            lessThan(AppConfig.lightThemeGradientStops[i + 1]),
          );
        }

        for (int i = 0; i < AppConfig.darkThemeGradientStops.length - 1; i++) {
          expect(
            AppConfig.darkThemeGradientStops[i],
            lessThan(AppConfig.darkThemeGradientStops[i + 1]),
          );
        }
      });
    });

    group('Asset Paths', () {
      test('should have splash background image path', () {
        expect(AppConfig.splashBackgroundImage, equals('assets/images/app_bg.png'));
      });
    });
  });
}
