// lib/core/theme/typography_config.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'theme_provider.dart';

/// Typography configurations for all 4 theme styles
///
/// Font Philosophy:
/// - Light/Dark: Poppins (modern, clean, readable)
/// - Paper: Caveat (handwriting) + Merriweather (serif for body)
/// - Sage: Lora (elegant serif with natural feel)
class TypographyConfig {
  // Prevent instantiation
  TypographyConfig._();

  /// Build TextTheme based on theme style and brightness
  static TextTheme buildTextTheme({
    required ThemeStyle style,
    required Brightness brightness,
  }) {
    final baseTextTheme = brightness == Brightness.light
        ? ThemeData.light().textTheme
        : ThemeData.dark().textTheme;

    switch (style) {
      case ThemeStyle.light:
      case ThemeStyle.dark:
        return _buildModernTextTheme(baseTextTheme);
      case ThemeStyle.paper:
        return _buildPaperTextTheme(baseTextTheme);
      case ThemeStyle.sage:
        return _buildSageTextTheme(baseTextTheme);
    }
  }

  // ═══════════════════════════════════════════════════════════════════
  // MODERN THEME (Light/Dark) - Poppins
  // ═══════════════════════════════════════════════════════════════════
  static TextTheme _buildModernTextTheme(TextTheme base) {
    return GoogleFonts.poppinsTextTheme(base).copyWith(
      // Display styles (large, impactful text)
      displayLarge: GoogleFonts.poppins(
        fontSize: 57,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.25,
        height: 1.12,
      ),
      displayMedium: GoogleFonts.poppins(
        fontSize: 45,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.16,
      ),
      displaySmall: GoogleFonts.poppins(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        height: 1.22,
      ),

      // Headline styles (section headers)
      headlineLarge: GoogleFonts.poppins(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.25,
      ),
      headlineMedium: GoogleFonts.poppins(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.29,
      ),
      headlineSmall: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.33,
      ),

      // Title styles (card headers, dialog titles)
      titleLarge: GoogleFonts.poppins(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.27,
      ),
      titleMedium: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
        height: 1.50,
      ),
      titleSmall: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.43,
      ),

      // Body styles (paragraph text)
      bodyLarge: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.50,
      ),
      bodyMedium: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.43,
      ),
      bodySmall: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.33,
      ),

      // Label styles (buttons, tabs)
      labelLarge: GoogleFonts.poppins(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        height: 1.43,
      ),
      labelMedium: GoogleFonts.poppins(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.33,
      ),
      labelSmall: GoogleFonts.poppins(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.5,
        height: 1.45,
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════
  // PAPER THEME - Caveat (handwriting) + Merriweather (serif)
  // ═══════════════════════════════════════════════════════════════════
  static TextTheme _buildPaperTextTheme(TextTheme base) {
    // Use Caveat for display/headline (handwriting feel)
    // Use Merriweather for body text (readable serif)
    return base.copyWith(
      // Display styles - Caveat (handwriting)
      displayLarge: GoogleFonts.caveat(
        fontSize: 64,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.10,
      ),
      displayMedium: GoogleFonts.caveat(
        fontSize: 52,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.15,
      ),
      displaySmall: GoogleFonts.caveat(
        fontSize: 42,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.20,
      ),

      // Headline styles - Caveat
      headlineLarge: GoogleFonts.caveat(
        fontSize: 38,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.22,
      ),
      headlineMedium: GoogleFonts.caveat(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.26,
      ),
      headlineSmall: GoogleFonts.caveat(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.30,
      ),

      // Title styles - Mix of Caveat and Merriweather
      titleLarge: GoogleFonts.caveat(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.25,
      ),
      titleMedium: GoogleFonts.merriweather(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.15,
        height: 1.50,
      ),
      titleSmall: GoogleFonts.merriweather(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
        height: 1.43,
      ),

      // Body styles - Merriweather (readable serif)
      bodyLarge: GoogleFonts.merriweather(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.60, // Slightly taller for serif readability
      ),
      bodyMedium: GoogleFonts.merriweather(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.55,
      ),
      bodySmall: GoogleFonts.merriweather(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.50,
      ),

      // Label styles - Merriweather
      labelLarge: GoogleFonts.merriweather(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.1,
        height: 1.43,
      ),
      labelMedium: GoogleFonts.merriweather(
        fontSize: 12,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        height: 1.33,
      ),
      labelSmall: GoogleFonts.merriweather(
        fontSize: 11,
        fontWeight: FontWeight.w700,
        letterSpacing: 0.5,
        height: 1.45,
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════
  // SAGE THEME - Lora (elegant serif with natural feel)
  // ═══════════════════════════════════════════════════════════════════
  static TextTheme _buildSageTextTheme(TextTheme base) {
    return GoogleFonts.loraTextTheme(base).copyWith(
      // Display styles
      displayLarge: GoogleFonts.lora(
        fontSize: 57,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.25,
        height: 1.12,
      ),
      displayMedium: GoogleFonts.lora(
        fontSize: 45,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        height: 1.16,
      ),
      displaySmall: GoogleFonts.lora(
        fontSize: 36,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        height: 1.22,
      ),

      // Headline styles
      headlineLarge: GoogleFonts.lora(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: 0,
        height: 1.25,
      ),
      headlineMedium: GoogleFonts.lora(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.29,
      ),
      headlineSmall: GoogleFonts.lora(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.33,
      ),

      // Title styles
      titleLarge: GoogleFonts.lora(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.27,
      ),
      titleMedium: GoogleFonts.lora(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.15,
        height: 1.50,
      ),
      titleSmall: GoogleFonts.lora(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
        height: 1.43,
      ),

      // Body styles
      bodyLarge: GoogleFonts.lora(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        height: 1.55, // Slightly taller for serif
      ),
      bodyMedium: GoogleFonts.lora(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        height: 1.50,
      ),
      bodySmall: GoogleFonts.lora(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        height: 1.45,
      ),

      // Label styles
      labelLarge: GoogleFonts.lora(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.1,
        height: 1.43,
      ),
      labelMedium: GoogleFonts.lora(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        height: 1.33,
      ),
      labelSmall: GoogleFonts.lora(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
        height: 1.45,
      ),
    );
  }

  /// Get font family name for theme style (for display purposes)
  static String getFontFamilyName(ThemeStyle style) {
    switch (style) {
      case ThemeStyle.light:
      case ThemeStyle.dark:
        return 'Poppins';
      case ThemeStyle.paper:
        return 'Caveat & Merriweather';
      case ThemeStyle.sage:
        return 'Lora';
    }
  }
}
