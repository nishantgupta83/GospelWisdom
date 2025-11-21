// test/core/theme_colors_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/core/theme/theme_colors.dart';

void main() {
  group('ThemeColors', () {
    group('Light Theme (Ocean/Blue Colors)', () {
      test('should have deep ocean blue as primary', () {
        expect(ThemeColors.lightPrimary, equals(const Color(0xFF1976D2)));
      });

      test('should have light sky blue as primary container', () {
        expect(ThemeColors.lightPrimaryContainer, equals(const Color(0xFFBBDEFB)));
      });

      test('should have bright blue as secondary', () {
        expect(ThemeColors.lightSecondary, equals(const Color(0xFF0288D1)));
      });

      test('should have cyan as tertiary', () {
        expect(ThemeColors.lightTertiary, equals(const Color(0xFF00ACC1)));
      });

      test('should have very light blue tint background', () {
        expect(ThemeColors.lightBackground, equals(const Color(0xFFF8FCFF)));
      });

      test('should have soft blue white surface', () {
        expect(ThemeColors.lightSurface, equals(const Color(0xFFF1F8FF)));
      });

      test('should have deep navy text', () {
        expect(ThemeColors.lightOnBackground, equals(const Color(0xFF0D1B2A)));
        expect(ThemeColors.lightOnSurface, equals(const Color(0xFF0D1B2A)));
      });

      test('should have white on primary colors', () {
        expect(ThemeColors.lightOnPrimary, equals(const Color(0xFFFFFFFF)));
        expect(ThemeColors.lightOnSecondary, equals(const Color(0xFFFFFFFF)));
        expect(ThemeColors.lightOnTertiary, equals(const Color(0xFFFFFFFF)));
      });

      test('should have consistent error colors', () {
        expect(ThemeColors.lightError, isA<Color>());
        expect(ThemeColors.lightOnError, equals(const Color(0xFFFFFFFF)));
      });
    });

    group('Dark Theme (Midnight Blue Colors)', () {
      test('should have bright sky blue as primary', () {
        expect(ThemeColors.darkPrimary, equals(const Color(0xFF82B1FF)));
      });

      test('should have medium blue as primary container', () {
        expect(ThemeColors.darkPrimaryContainer, equals(const Color(0xFF1565C0)));
      });

      test('should have light blue as secondary', () {
        expect(ThemeColors.darkSecondary, equals(const Color(0xFF64B5F6)));
      });

      test('should have cyan as tertiary', () {
        expect(ThemeColors.darkTertiary, equals(const Color(0xFF4DD0E1)));
      });

      test('should have deep midnight blue background', () {
        expect(ThemeColors.darkBackground, equals(const Color(0xFF0A1929)));
      });

      test('should have dark blue surface', () {
        expect(ThemeColors.darkSurface, equals(const Color(0xFF0D1B2A)));
      });

      test('should have high contrast light blue text', () {
        expect(ThemeColors.darkOnBackground, equals(const Color(0xFFE3F2FD)));
        expect(ThemeColors.darkOnSurface, equals(const Color(0xFFE3F2FD)));
      });

      test('should have good contrast for readability', () {
        // High contrast text on dark background
        expect(ThemeColors.darkOnBackground, isNot(equals(ThemeColors.darkBackground)));
        expect(ThemeColors.darkOnSurface, isNot(equals(ThemeColors.darkSurface)));
      });
    });

    group('Paper Theme - Light', () {
      test('should have warm brown as primary', () {
        expect(ThemeColors.paperLightPrimary, equals(const Color(0xFF8B6F47)));
      });

      test('should have cream background', () {
        expect(ThemeColors.paperLightBackground, equals(const Color(0xFFFAF3E0)));
      });

      test('should have aged paper surface', () {
        expect(ThemeColors.paperLightSurface, equals(const Color(0xFFF5E6D3)));
      });

      test('should have dark brown text', () {
        expect(ThemeColors.paperLightOnBackground, equals(const Color(0xFF3E2723)));
        expect(ThemeColors.paperLightOnSurface, equals(const Color(0xFF3E2723)));
      });
    });

    group('Paper Theme - Dark', () {
      test('should have light brown as primary', () {
        expect(ThemeColors.paperDarkPrimary, equals(const Color(0xFFD7A86E)));
      });

      test('should have deep brown background', () {
        expect(ThemeColors.paperDarkBackground, equals(const Color(0xFF2C1810)));
      });

      test('should have dark paper surface', () {
        expect(ThemeColors.paperDarkSurface, equals(const Color(0xFF3E2723)));
      });
    });

    group('Sage Theme - Light', () {
      test('should have sage green as primary', () {
        expect(ThemeColors.sageLightPrimary, equals(const Color(0xFF6B8E6F)));
      });

      test('should have soft green tint background', () {
        expect(ThemeColors.sageLightBackground, equals(const Color(0xFFF1F8F4)));
      });

      test('should have very light green surface', () {
        expect(ThemeColors.sageLightSurface, equals(const Color(0xFFE8F5E9)));
      });
    });

    group('Sage Theme - Dark', () {
      test('should have light sage as primary', () {
        expect(ThemeColors.sageDarkPrimary, equals(const Color(0xFFA5D6A7)));
      });

      test('should have dark forest background', () {
        expect(ThemeColors.sageDarkBackground, equals(const Color(0xFF1B3A1F)));
      });

      test('should have forest green surface', () {
        expect(ThemeColors.sageDarkSurface, equals(const Color(0xFF1B5E20)));
      });
    });

    group('Color Consistency', () {
      test('should have outline colors for all themes', () {
        expect(ThemeColors.lightOutline, isA<Color>());
        expect(ThemeColors.darkOutline, isA<Color>());
        expect(ThemeColors.paperLightOutline, isA<Color>());
        expect(ThemeColors.paperDarkOutline, isA<Color>());
        expect(ThemeColors.sageLightOutline, isA<Color>());
        expect(ThemeColors.sageDarkOutline, isA<Color>());
      });

      test('should have shadow colors for all themes', () {
        expect(ThemeColors.lightShadow, isA<Color>());
        expect(ThemeColors.darkShadow, isA<Color>());
        expect(ThemeColors.paperLightShadow, isA<Color>());
        expect(ThemeColors.paperDarkShadow, isA<Color>());
        expect(ThemeColors.sageLightShadow, isA<Color>());
        expect(ThemeColors.sageDarkShadow, isA<Color>());
      });

      test('should have error colors for all themes', () {
        expect(ThemeColors.lightError, isA<Color>());
        expect(ThemeColors.darkError, isA<Color>());
        expect(ThemeColors.paperLightError, isA<Color>());
        expect(ThemeColors.paperDarkError, isA<Color>());
        expect(ThemeColors.sageLightError, isA<Color>());
        expect(ThemeColors.sageDarkError, isA<Color>());
      });
    });

    group('Surface Variants', () {
      test('should have surface variants for all themes', () {
        expect(ThemeColors.lightSurfaceVariant, isA<Color>());
        expect(ThemeColors.darkSurfaceVariant, isA<Color>());
        expect(ThemeColors.paperLightSurfaceVariant, isA<Color>());
        expect(ThemeColors.paperDarkSurfaceVariant, isA<Color>());
        expect(ThemeColors.sageLightSurfaceVariant, isA<Color>());
        expect(ThemeColors.sageDarkSurfaceVariant, isA<Color>());
      });

      test('should have onSurfaceVariant colors for all themes', () {
        expect(ThemeColors.lightOnSurfaceVariant, isA<Color>());
        expect(ThemeColors.darkOnSurfaceVariant, isA<Color>());
        expect(ThemeColors.paperLightOnSurfaceVariant, isA<Color>());
        expect(ThemeColors.paperDarkOnSurfaceVariant, isA<Color>());
        expect(ThemeColors.sageLightOnSurfaceVariant, isA<Color>());
        expect(ThemeColors.sageDarkOnSurfaceVariant, isA<Color>());
      });
    });

    group('Container Colors', () {
      test('should have primary containers for all themes', () {
        expect(ThemeColors.lightPrimaryContainer, isA<Color>());
        expect(ThemeColors.darkPrimaryContainer, isA<Color>());
        expect(ThemeColors.paperLightPrimaryContainer, isA<Color>());
        expect(ThemeColors.paperDarkPrimaryContainer, isA<Color>());
        expect(ThemeColors.sageLightPrimaryContainer, isA<Color>());
        expect(ThemeColors.sageDarkPrimaryContainer, isA<Color>());
      });

      test('should have secondary containers for all themes', () {
        expect(ThemeColors.lightSecondaryContainer, isA<Color>());
        expect(ThemeColors.darkSecondaryContainer, isA<Color>());
        expect(ThemeColors.paperLightSecondaryContainer, isA<Color>());
        expect(ThemeColors.paperDarkSecondaryContainer, isA<Color>());
        expect(ThemeColors.sageLightSecondaryContainer, isA<Color>());
        expect(ThemeColors.sageDarkSecondaryContainer, isA<Color>());
      });

      test('should have tertiary containers for all themes', () {
        expect(ThemeColors.lightTertiaryContainer, isA<Color>());
        expect(ThemeColors.darkTertiaryContainer, isA<Color>());
        expect(ThemeColors.paperLightTertiaryContainer, isA<Color>());
        expect(ThemeColors.paperDarkTertiaryContainer, isA<Color>());
        expect(ThemeColors.sageLightTertiaryContainer, isA<Color>());
        expect(ThemeColors.sageDarkTertiaryContainer, isA<Color>());
      });
    });

    group('Accessibility', () {
      test('should have sufficient contrast for light theme', () {
        // Primary color should be darker than background
        expect(ThemeColors.lightPrimary.value, lessThan(ThemeColors.lightBackground.value));
      });

      test('should have sufficient contrast for dark theme', () {
        // Primary color should be lighter than background
        expect(ThemeColors.darkPrimary.value, greaterThan(ThemeColors.darkBackground.value));
      });

      test('should have white text on dark primary colors', () {
        expect(ThemeColors.lightOnPrimary, equals(Colors.white));
        expect(ThemeColors.paperLightOnPrimary, equals(Colors.white));
        expect(ThemeColors.sageLightOnPrimary, equals(Colors.white));
      });
    });
  });
}
