// lib/core/theme/theme_colors.dart

import 'package:flutter/material.dart';

/// Theme color palettes for all 4 theme styles (light/dark variants)
///
/// Color Philosophy:
/// - Light Theme: Clean whites, light grays, purple accents
/// - Dark Theme: Deep navy blues, steel blues, muted purples
/// - Paper Theme: Vintage cream/beige (light), dark parchment (dark)
/// - Sage Theme: Earthy sage greens (light), forest greens (dark)
class ThemeColors {
  // Prevent instantiation
  ThemeColors._();

  // ═══════════════════════════════════════════════════════════════════
  // LIGHT THEME (Ocean/Blue - Calm, Serene)
  // ═══════════════════════════════════════════════════════════════════
  static const lightPrimary = Color(0xFF1976D2);           // Deep ocean blue
  static const lightOnPrimary = Color(0xFFFFFFFF);         // White
  static const lightPrimaryContainer = Color(0xFFBBDEFB);  // Light sky blue
  static const lightOnPrimaryContainer = Color(0xFF0D47A1);

  static const lightSecondary = Color(0xFF0288D1);         // Bright blue
  static const lightOnSecondary = Color(0xFFFFFFFF);
  static const lightSecondaryContainer = Color(0xFFB3E5FC);
  static const lightOnSecondaryContainer = Color(0xFF01579B);

  static const lightTertiary = Color(0xFF00ACC1);          // Cyan
  static const lightOnTertiary = Color(0xFFFFFFFF);
  static const lightTertiaryContainer = Color(0xFFB2EBF2);
  static const lightOnTertiaryContainer = Color(0xFF006064);

  static const lightError = Color(0xFFBA1A1A);
  static const lightOnError = Color(0xFFFFFFFF);
  static const lightErrorContainer = Color(0xFFFFDAD6);
  static const lightOnErrorContainer = Color(0xFF410002);

  static const lightBackground = Color(0xFFF8FCFF);        // Very light blue tint
  static const lightOnBackground = Color(0xFF0D1B2A);      // Deep navy text
  static const lightSurface = Color(0xFFF1F8FF);           // Soft blue white
  static const lightOnSurface = Color(0xFF0D1B2A);
  static const lightSurfaceVariant = Color(0xFFE3F2FD);    // Light blue
  static const lightOnSurfaceVariant = Color(0xFF1565C0);

  static const lightOutline = Color(0xFF5E92B8);
  static const lightShadow = Color(0xFF000000);

  // ═══════════════════════════════════════════════════════════════════
  // DARK THEME (Midnight Blue - High Contrast, Readable)
  // ═══════════════════════════════════════════════════════════════════
  static const darkPrimary = Color(0xFF82B1FF);            // Bright sky blue
  static const darkOnPrimary = Color(0xFF0D47A1);          // Deep blue
  static const darkPrimaryContainer = Color(0xFF1565C0);   // Medium blue
  static const darkOnPrimaryContainer = Color(0xFFE3F2FD);

  static const darkSecondary = Color(0xFF64B5F6);          // Light blue
  static const darkOnSecondary = Color(0xFF01579B);
  static const darkSecondaryContainer = Color(0xFF0277BD);
  static const darkOnSecondaryContainer = Color(0xFFB3E5FC);

  static const darkTertiary = Color(0xFF4DD0E1);           // Cyan
  static const darkOnTertiary = Color(0xFF006064);
  static const darkTertiaryContainer = Color(0xFF00838F);
  static const darkOnTertiaryContainer = Color(0xFFB2EBF2);

  static const darkError = Color(0xFFFFB4AB);
  static const darkOnError = Color(0xFF690005);
  static const darkErrorContainer = Color(0xFF93000A);
  static const darkOnErrorContainer = Color(0xFFFFDAD6);

  static const darkBackground = Color(0xFF0A1929);         // Deep midnight blue
  static const darkOnBackground = Color(0xFFE3F2FD);       // Very light blue (high contrast)
  static const darkSurface = Color(0xFF0D1B2A);            // Dark blue surface
  static const darkOnSurface = Color(0xFFE3F2FD);          // High contrast text
  static const darkSurfaceVariant = Color(0xFF1A2332);     // Slightly lighter surface
  static const darkOnSurfaceVariant = Color(0xFFBBDEFB);   // Light blue variant

  static const darkOutline = Color(0xFF5E92B8);
  static const darkShadow = Color(0xFF000000);

  // ═══════════════════════════════════════════════════════════════════
  // PAPER THEME - LIGHT (Vintage Cream, Warm Tones)
  // ═══════════════════════════════════════════════════════════════════
  static const paperLightPrimary = Color(0xFF8B6F47);          // Warm brown
  static const paperLightOnPrimary = Color(0xFFFFFFFF);
  static const paperLightPrimaryContainer = Color(0xFFE8D5B7); // Light tan
  static const paperLightOnPrimaryContainer = Color(0xFF3E2723);

  static const paperLightSecondary = Color(0xFF6D4C41);
  static const paperLightOnSecondary = Color(0xFFFFFFFF);
  static const paperLightSecondaryContainer = Color(0xFFD7CCC8);
  static const paperLightOnSecondaryContainer = Color(0xFF3E2723);

  static const paperLightTertiary = Color(0xFF8D6E63);
  static const paperLightOnTertiary = Color(0xFFFFFFFF);
  static const paperLightTertiaryContainer = Color(0xFFEFEBE9);
  static const paperLightOnTertiaryContainer = Color(0xFF3E2723);

  static const paperLightError = Color(0xFFBA1A1A);
  static const paperLightOnError = Color(0xFFFFFFFF);
  static const paperLightErrorContainer = Color(0xFFFFDAD6);
  static const paperLightOnErrorContainer = Color(0xFF410002);

  // Vintage paper colors
  static const paperLightBackground = Color(0xFFFAF3E0);       // Cream
  static const paperLightOnBackground = Color(0xFF3E2723);     // Dark brown
  static const paperLightSurface = Color(0xFFF5E6D3);          // Aged paper
  static const paperLightOnSurface = Color(0xFF3E2723);
  static const paperLightSurfaceVariant = Color(0xFFE8D5B7);
  static const paperLightOnSurfaceVariant = Color(0xFF5D4037);

  static const paperLightOutline = Color(0xFF8D6E63);
  static const paperLightShadow = Color(0xFF3E2723);

  // ═══════════════════════════════════════════════════════════════════
  // PAPER THEME - DARK (Dark Parchment, Sepia)
  // ═══════════════════════════════════════════════════════════════════
  static const paperDarkPrimary = Color(0xFFD7A86E);           // Light brown
  static const paperDarkOnPrimary = Color(0xFF3E2723);
  static const paperDarkPrimaryContainer = Color(0xFF6D4C41);
  static const paperDarkOnPrimaryContainer = Color(0xFFEFEBE9);

  static const paperDarkSecondary = Color(0xFFBCAAA4);
  static const paperDarkOnSecondary = Color(0xFF3E2723);
  static const paperDarkSecondaryContainer = Color(0xFF5D4037);
  static const paperDarkOnSecondaryContainer = Color(0xFFD7CCC8);

  static const paperDarkTertiary = Color(0xFFA1887F);
  static const paperDarkOnTertiary = Color(0xFF3E2723);
  static const paperDarkTertiaryContainer = Color(0xFF6D4C41);
  static const paperDarkOnTertiaryContainer = Color(0xFFEFEBE9);

  static const paperDarkError = Color(0xFFFFB4AB);
  static const paperDarkOnError = Color(0xFF690005);
  static const paperDarkErrorContainer = Color(0xFF93000A);
  static const paperDarkOnErrorContainer = Color(0xFFFFDAD6);

  // Dark parchment colors
  static const paperDarkBackground = Color(0xFF2C1810);        // Deep brown
  static const paperDarkOnBackground = Color(0xFFE8D5B7);
  static const paperDarkSurface = Color(0xFF3E2723);           // Dark paper
  static const paperDarkOnSurface = Color(0xFFEFEBE9);
  static const paperDarkSurfaceVariant = Color(0xFF4E342E);
  static const paperDarkOnSurfaceVariant = Color(0xFFD7CCC8);

  static const paperDarkOutline = Color(0xFF8D6E63);
  static const paperDarkShadow = Color(0xFF000000);

  // ═══════════════════════════════════════════════════════════════════
  // SAGE THEME - LIGHT (Earthy Sage Green, Natural)
  // ═══════════════════════════════════════════════════════════════════
  static const sageLightPrimary = Color(0xFF6B8E6F);          // Sage green
  static const sageLightOnPrimary = Color(0xFFFFFFFF);
  static const sageLightPrimaryContainer = Color(0xFFD4E7D7); // Light sage
  static const sageLightOnPrimaryContainer = Color(0xFF1B5E20);

  static const sageLightSecondary = Color(0xFF558B2F);
  static const sageLightOnSecondary = Color(0xFFFFFFFF);
  static const sageLightSecondaryContainer = Color(0xFFDCEDC8);
  static const sageLightOnSecondaryContainer = Color(0xFF1B5E20);

  static const sageLightTertiary = Color(0xFF7CB342);
  static const sageLightOnTertiary = Color(0xFFFFFFFF);
  static const sageLightTertiaryContainer = Color(0xFFE7F5E1);
  static const sageLightOnTertiaryContainer = Color(0xFF1B5E20);

  static const sageLightError = Color(0xFFBA1A1A);
  static const sageLightOnError = Color(0xFFFFFFFF);
  static const sageLightErrorContainer = Color(0xFFFFDAD6);
  static const sageLightOnErrorContainer = Color(0xFF410002);

  // Natural earthy colors
  static const sageLightBackground = Color(0xFFF1F8F4);       // Soft green tint
  static const sageLightOnBackground = Color(0xFF1B5E20);
  static const sageLightSurface = Color(0xFFE8F5E9);          // Very light green
  static const sageLightOnSurface = Color(0xFF1B5E20);
  static const sageLightSurfaceVariant = Color(0xFFD4E7D7);
  static const sageLightOnSurfaceVariant = Color(0xFF2E7D32);

  static const sageLightOutline = Color(0xFF6B8E6F);
  static const sageLightShadow = Color(0xFF1B5E20);

  // ═══════════════════════════════════════════════════════════════════
  // SAGE THEME - DARK (Deep Forest Green)
  // ═══════════════════════════════════════════════════════════════════
  static const sageDarkPrimary = Color(0xFFA5D6A7);           // Light sage
  static const sageDarkOnPrimary = Color(0xFF1B5E20);
  static const sageDarkPrimaryContainer = Color(0xFF388E3C);
  static const sageDarkOnPrimaryContainer = Color(0xFFE8F5E9);

  static const sageDarkSecondary = Color(0xFF9CCC65);
  static const sageDarkOnSecondary = Color(0xFF1B5E20);
  static const sageDarkSecondaryContainer = Color(0xFF558B2F);
  static const sageDarkOnSecondaryContainer = Color(0xFFDCEDC8);

  static const sageDarkTertiary = Color(0xFFAED581);
  static const sageDarkOnTertiary = Color(0xFF1B5E20);
  static const sageDarkTertiaryContainer = Color(0xFF689F38);
  static const sageDarkOnTertiaryContainer = Color(0xFFE7F5E1);

  static const sageDarkError = Color(0xFFFFB4AB);
  static const sageDarkOnError = Color(0xFF690005);
  static const sageDarkErrorContainer = Color(0xFF93000A);
  static const sageDarkOnErrorContainer = Color(0xFFFFDAD6);

  // Deep forest colors
  static const sageDarkBackground = Color(0xFF1B3A1F);        // Dark forest
  static const sageDarkOnBackground = Color(0xFFE8F5E9);
  static const sageDarkSurface = Color(0xFF1B5E20);           // Forest green
  static const sageDarkOnSurface = Color(0xFFE8F5E9);
  static const sageDarkSurfaceVariant = Color(0xFF2E7D32);
  static const sageDarkOnSurfaceVariant = Color(0xFFC8E6C9);

  static const sageDarkOutline = Color(0xFF81C784);
  static const sageDarkShadow = Color(0xFF000000);
}
