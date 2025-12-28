// lib/core/theme/theme_colors.dart

import 'package:flutter/material.dart';

/// Theme color palettes for all 4 theme styles (light/dark variants)
///
/// Color Philosophy:
/// - Light Theme: Clean ocean blues, calm and serene
/// - Dark Theme: Deep midnight blues, high contrast and readable
/// - Lavender Theme: Elegant purple/violet tones
/// - Red Theme: Warm crimson and rose tones
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
  // LAVENDER THEME - LIGHT (Elegant Purple/Violet)
  // ═══════════════════════════════════════════════════════════════════
  static const lavenderLightPrimary = Color(0xFF7C4DFF);          // Deep violet
  static const lavenderLightOnPrimary = Color(0xFFFFFFFF);
  static const lavenderLightPrimaryContainer = Color(0xFFEDE7F6); // Light lavender
  static const lavenderLightOnPrimaryContainer = Color(0xFF311B92);

  static const lavenderLightSecondary = Color(0xFF9575CD);
  static const lavenderLightOnSecondary = Color(0xFFFFFFFF);
  static const lavenderLightSecondaryContainer = Color(0xFFE1BEE7);
  static const lavenderLightOnSecondaryContainer = Color(0xFF4A148C);

  static const lavenderLightTertiary = Color(0xFFBA68C8);
  static const lavenderLightOnTertiary = Color(0xFFFFFFFF);
  static const lavenderLightTertiaryContainer = Color(0xFFF3E5F5);
  static const lavenderLightOnTertiaryContainer = Color(0xFF6A1B9A);

  static const lavenderLightError = Color(0xFFBA1A1A);
  static const lavenderLightOnError = Color(0xFFFFFFFF);
  static const lavenderLightErrorContainer = Color(0xFFFFDAD6);
  static const lavenderLightOnErrorContainer = Color(0xFF410002);

  // Soft lavender colors
  static const lavenderLightBackground = Color(0xFFFAF7FF);       // Very light lavender
  static const lavenderLightOnBackground = Color(0xFF311B92);     // Deep purple text
  static const lavenderLightSurface = Color(0xFFF3EAFF);          // Soft lavender
  static const lavenderLightOnSurface = Color(0xFF311B92);
  static const lavenderLightSurfaceVariant = Color(0xFFE8DEFF);
  static const lavenderLightOnSurfaceVariant = Color(0xFF5E35B1);

  static const lavenderLightOutline = Color(0xFF9575CD);
  static const lavenderLightShadow = Color(0xFF311B92);

  // ═══════════════════════════════════════════════════════════════════
  // LAVENDER THEME - DARK (Deep Violet)
  // ═══════════════════════════════════════════════════════════════════
  static const lavenderDarkPrimary = Color(0xFFB388FF);           // Light violet
  static const lavenderDarkOnPrimary = Color(0xFF311B92);
  static const lavenderDarkPrimaryContainer = Color(0xFF5E35B1);
  static const lavenderDarkOnPrimaryContainer = Color(0xFFEDE7F6);

  static const lavenderDarkSecondary = Color(0xFFCE93D8);
  static const lavenderDarkOnSecondary = Color(0xFF4A148C);
  static const lavenderDarkSecondaryContainer = Color(0xFF7B1FA2);
  static const lavenderDarkOnSecondaryContainer = Color(0xFFE1BEE7);

  static const lavenderDarkTertiary = Color(0xFFE1BEE7);
  static const lavenderDarkOnTertiary = Color(0xFF4A148C);
  static const lavenderDarkTertiaryContainer = Color(0xFF8E24AA);
  static const lavenderDarkOnTertiaryContainer = Color(0xFFF3E5F5);

  static const lavenderDarkError = Color(0xFFFFB4AB);
  static const lavenderDarkOnError = Color(0xFF690005);
  static const lavenderDarkErrorContainer = Color(0xFF93000A);
  static const lavenderDarkOnErrorContainer = Color(0xFFFFDAD6);

  // Deep violet colors
  static const lavenderDarkBackground = Color(0xFF1A0A2E);        // Deep violet
  static const lavenderDarkOnBackground = Color(0xFFEDE7F6);
  static const lavenderDarkSurface = Color(0xFF2D1B4E);           // Dark purple
  static const lavenderDarkOnSurface = Color(0xFFEDE7F6);
  static const lavenderDarkSurfaceVariant = Color(0xFF3D2665);
  static const lavenderDarkOnSurfaceVariant = Color(0xFFD1C4E9);

  static const lavenderDarkOutline = Color(0xFFB388FF);
  static const lavenderDarkShadow = Color(0xFF000000);

  // ═══════════════════════════════════════════════════════════════════
  // RED THEME - LIGHT (Warm Red/Rose)
  // ═══════════════════════════════════════════════════════════════════
  static const redLightPrimary = Color(0xFFD32F2F);           // Warm red
  static const redLightOnPrimary = Color(0xFFFFFFFF);
  static const redLightPrimaryContainer = Color(0xFFFFCDD2);  // Light pink
  static const redLightOnPrimaryContainer = Color(0xFFB71C1C);

  static const redLightSecondary = Color(0xFFE57373);
  static const redLightOnSecondary = Color(0xFFFFFFFF);
  static const redLightSecondaryContainer = Color(0xFFFFEBEE);
  static const redLightOnSecondaryContainer = Color(0xFFC62828);

  static const redLightTertiary = Color(0xFFFF8A80);
  static const redLightOnTertiary = Color(0xFFB71C1C);
  static const redLightTertiaryContainer = Color(0xFFFFCDD2);
  static const redLightOnTertiaryContainer = Color(0xFFD32F2F);

  static const redLightError = Color(0xFFBA1A1A);
  static const redLightOnError = Color(0xFFFFFFFF);
  static const redLightErrorContainer = Color(0xFFFFDAD6);
  static const redLightOnErrorContainer = Color(0xFF410002);

  // Warm rose colors
  static const redLightBackground = Color(0xFFFFF8F7);        // Warm white
  static const redLightOnBackground = Color(0xFFB71C1C);
  static const redLightSurface = Color(0xFFFFEBEE);           // Very light pink
  static const redLightOnSurface = Color(0xFFB71C1C);
  static const redLightSurfaceVariant = Color(0xFFFFCDD2);
  static const redLightOnSurfaceVariant = Color(0xFFC62828);

  static const redLightOutline = Color(0xFFE57373);
  static const redLightShadow = Color(0xFFB71C1C);

  // ═══════════════════════════════════════════════════════════════════
  // RED THEME - DARK (Deep Crimson)
  // ═══════════════════════════════════════════════════════════════════
  static const redDarkPrimary = Color(0xFFEF9A9A);            // Light coral
  static const redDarkOnPrimary = Color(0xFFB71C1C);
  static const redDarkPrimaryContainer = Color(0xFFC62828);
  static const redDarkOnPrimaryContainer = Color(0xFFFFEBEE);

  static const redDarkSecondary = Color(0xFFFF8A80);
  static const redDarkOnSecondary = Color(0xFFB71C1C);
  static const redDarkSecondaryContainer = Color(0xFFD32F2F);
  static const redDarkOnSecondaryContainer = Color(0xFFFFCDD2);

  static const redDarkTertiary = Color(0xFFFFAB91);
  static const redDarkOnTertiary = Color(0xFFBF360C);
  static const redDarkTertiaryContainer = Color(0xFFE64A19);
  static const redDarkOnTertiaryContainer = Color(0xFFFFCCBC);

  static const redDarkError = Color(0xFFFFB4AB);
  static const redDarkOnError = Color(0xFF690005);
  static const redDarkErrorContainer = Color(0xFF93000A);
  static const redDarkOnErrorContainer = Color(0xFFFFDAD6);

  // Deep crimson colors
  static const redDarkBackground = Color(0xFF2E0A0A);         // Deep crimson
  static const redDarkOnBackground = Color(0xFFFFEBEE);
  static const redDarkSurface = Color(0xFF421515);            // Dark red
  static const redDarkOnSurface = Color(0xFFFFEBEE);
  static const redDarkSurfaceVariant = Color(0xFF5D1F1F);
  static const redDarkOnSurfaceVariant = Color(0xFFFFCDD2);

  static const redDarkOutline = Color(0xFFEF9A9A);
  static const redDarkShadow = Color(0xFF000000);
}
