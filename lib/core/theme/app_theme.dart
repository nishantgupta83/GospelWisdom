// lib/core/theme/app_theme.dart

import 'package:flutter/material.dart';
import '../app_config.dart';
import 'theme_provider.dart';
import 'theme_colors.dart';
import 'typography_config.dart';
import 'text_theme_builder.dart';

/// App theme configuration
/// Centralized theme management with 4 distinct theme styles
/// Each style has light and dark mode variants (8 total themes)
class AppTheme {
  // ═══════════════════════════════════════════════════════════════════
  // MAIN THEME BUILDER
  // ═══════════════════════════════════════════════════════════════════

  /// Build theme based on style and brightness
  /// This is the primary method called by ThemeProvider
  static ThemeData buildTheme({
    required ThemeStyle style,
    required bool isDark,
    required bool shadowEnabled,
  }) {
    final brightness = isDark ? Brightness.dark : Brightness.light;
    final colorScheme = _buildColorScheme(style, brightness);
    final textTheme = TypographyConfig.buildTextTheme(
      style: style,
      brightness: brightness,
    );

    // Apply shadow overlay if enabled
    final finalTextTheme = shadowEnabled
        ? TextThemeBuilder.buildTextThemeWithShadows(textTheme, true)
        : textTheme;

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      textTheme: finalTextTheme,
      scaffoldBackgroundColor: AppConfig.transparentColor,

      // Component themes
      cardTheme: _buildCardTheme(colorScheme),
      bottomNavigationBarTheme: _buildBottomNavTheme(colorScheme),
      appBarTheme: _buildAppBarTheme(colorScheme),
      elevatedButtonTheme: _buildElevatedButtonTheme(colorScheme),
      outlinedButtonTheme: _buildOutlinedButtonTheme(colorScheme),
      textButtonTheme: _buildTextButtonTheme(colorScheme),
      floatingActionButtonTheme: _buildFABTheme(colorScheme),
      chipTheme: _buildChipTheme(colorScheme),
      dividerTheme: DividerThemeData(
        color: colorScheme.outline.withValues(alpha: 0.2),
        thickness: 1,
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════
  // COLOR SCHEME BUILDERS (8 variants)
  // ═══════════════════════════════════════════════════════════════════

  static ColorScheme _buildColorScheme(ThemeStyle style, Brightness brightness) {
    switch (style) {
      case ThemeStyle.light:
        return brightness == Brightness.light
            ? _buildLightColorScheme()
            : _buildDarkColorScheme();
      case ThemeStyle.dark:
        return brightness == Brightness.light
            ? _buildLightColorScheme()
            : _buildDarkColorScheme();
      case ThemeStyle.lavender:
        return brightness == Brightness.light
            ? _buildLavenderLightColorScheme()
            : _buildLavenderDarkColorScheme();
      case ThemeStyle.red:
        return brightness == Brightness.light
            ? _buildRedLightColorScheme()
            : _buildRedDarkColorScheme();
    }
  }

  /// Light Theme (Modern, Clean Purple)
  static ColorScheme _buildLightColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.lightPrimary,
      onPrimary: ThemeColors.lightOnPrimary,
      primaryContainer: ThemeColors.lightPrimaryContainer,
      onPrimaryContainer: ThemeColors.lightOnPrimaryContainer,
      secondary: ThemeColors.lightSecondary,
      onSecondary: ThemeColors.lightOnSecondary,
      secondaryContainer: ThemeColors.lightSecondaryContainer,
      onSecondaryContainer: ThemeColors.lightOnSecondaryContainer,
      tertiary: ThemeColors.lightTertiary,
      onTertiary: ThemeColors.lightOnTertiary,
      tertiaryContainer: ThemeColors.lightTertiaryContainer,
      onTertiaryContainer: ThemeColors.lightOnTertiaryContainer,
      error: ThemeColors.lightError,
      onError: ThemeColors.lightOnError,
      errorContainer: ThemeColors.lightErrorContainer,
      onErrorContainer: ThemeColors.lightOnErrorContainer,
      surface: ThemeColors.lightSurface,
      onSurface: ThemeColors.lightOnSurface,
      surfaceContainerHighest: ThemeColors.lightSurfaceVariant,
      onSurfaceVariant: ThemeColors.lightOnSurfaceVariant,
      outline: ThemeColors.lightOutline,
      shadow: ThemeColors.lightShadow,
    );
  }

  /// Dark Theme (Deep Navy, Steel Blues)
  static ColorScheme _buildDarkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.darkPrimary,
      onPrimary: ThemeColors.darkOnPrimary,
      primaryContainer: ThemeColors.darkPrimaryContainer,
      onPrimaryContainer: ThemeColors.darkOnPrimaryContainer,
      secondary: ThemeColors.darkSecondary,
      onSecondary: ThemeColors.darkOnSecondary,
      secondaryContainer: ThemeColors.darkSecondaryContainer,
      onSecondaryContainer: ThemeColors.darkOnSecondaryContainer,
      tertiary: ThemeColors.darkTertiary,
      onTertiary: ThemeColors.darkOnTertiary,
      tertiaryContainer: ThemeColors.darkTertiaryContainer,
      onTertiaryContainer: ThemeColors.darkOnTertiaryContainer,
      error: ThemeColors.darkError,
      onError: ThemeColors.darkOnError,
      errorContainer: ThemeColors.darkErrorContainer,
      onErrorContainer: ThemeColors.darkOnErrorContainer,
      surface: ThemeColors.darkSurface,
      onSurface: ThemeColors.darkOnSurface,
      surfaceContainerHighest: ThemeColors.darkSurfaceVariant,
      onSurfaceVariant: ThemeColors.darkOnSurfaceVariant,
      outline: ThemeColors.darkOutline,
      shadow: ThemeColors.darkShadow,
    );
  }

  /// Lavender Theme - Light (Elegant Purple/Violet)
  static ColorScheme _buildLavenderLightColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.lavenderLightPrimary,
      onPrimary: ThemeColors.lavenderLightOnPrimary,
      primaryContainer: ThemeColors.lavenderLightPrimaryContainer,
      onPrimaryContainer: ThemeColors.lavenderLightOnPrimaryContainer,
      secondary: ThemeColors.lavenderLightSecondary,
      onSecondary: ThemeColors.lavenderLightOnSecondary,
      secondaryContainer: ThemeColors.lavenderLightSecondaryContainer,
      onSecondaryContainer: ThemeColors.lavenderLightOnSecondaryContainer,
      tertiary: ThemeColors.lavenderLightTertiary,
      onTertiary: ThemeColors.lavenderLightOnTertiary,
      tertiaryContainer: ThemeColors.lavenderLightTertiaryContainer,
      onTertiaryContainer: ThemeColors.lavenderLightOnTertiaryContainer,
      error: ThemeColors.lavenderLightError,
      onError: ThemeColors.lavenderLightOnError,
      errorContainer: ThemeColors.lavenderLightErrorContainer,
      onErrorContainer: ThemeColors.lavenderLightOnErrorContainer,
      surface: ThemeColors.lavenderLightSurface,
      onSurface: ThemeColors.lavenderLightOnSurface,
      surfaceContainerHighest: ThemeColors.lavenderLightSurfaceVariant,
      onSurfaceVariant: ThemeColors.lavenderLightOnSurfaceVariant,
      outline: ThemeColors.lavenderLightOutline,
      shadow: ThemeColors.lavenderLightShadow,
    );
  }

  /// Lavender Theme - Dark (Deep Violet)
  static ColorScheme _buildLavenderDarkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.lavenderDarkPrimary,
      onPrimary: ThemeColors.lavenderDarkOnPrimary,
      primaryContainer: ThemeColors.lavenderDarkPrimaryContainer,
      onPrimaryContainer: ThemeColors.lavenderDarkOnPrimaryContainer,
      secondary: ThemeColors.lavenderDarkSecondary,
      onSecondary: ThemeColors.lavenderDarkOnSecondary,
      secondaryContainer: ThemeColors.lavenderDarkSecondaryContainer,
      onSecondaryContainer: ThemeColors.lavenderDarkOnSecondaryContainer,
      tertiary: ThemeColors.lavenderDarkTertiary,
      onTertiary: ThemeColors.lavenderDarkOnTertiary,
      tertiaryContainer: ThemeColors.lavenderDarkTertiaryContainer,
      onTertiaryContainer: ThemeColors.lavenderDarkOnTertiaryContainer,
      error: ThemeColors.lavenderDarkError,
      onError: ThemeColors.lavenderDarkOnError,
      errorContainer: ThemeColors.lavenderDarkErrorContainer,
      onErrorContainer: ThemeColors.lavenderDarkOnErrorContainer,
      surface: ThemeColors.lavenderDarkSurface,
      onSurface: ThemeColors.lavenderDarkOnSurface,
      surfaceContainerHighest: ThemeColors.lavenderDarkSurfaceVariant,
      onSurfaceVariant: ThemeColors.lavenderDarkOnSurfaceVariant,
      outline: ThemeColors.lavenderDarkOutline,
      shadow: ThemeColors.lavenderDarkShadow,
    );
  }

  /// Red Theme - Light (Warm Rose)
  static ColorScheme _buildRedLightColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.redLightPrimary,
      onPrimary: ThemeColors.redLightOnPrimary,
      primaryContainer: ThemeColors.redLightPrimaryContainer,
      onPrimaryContainer: ThemeColors.redLightOnPrimaryContainer,
      secondary: ThemeColors.redLightSecondary,
      onSecondary: ThemeColors.redLightOnSecondary,
      secondaryContainer: ThemeColors.redLightSecondaryContainer,
      onSecondaryContainer: ThemeColors.redLightOnSecondaryContainer,
      tertiary: ThemeColors.redLightTertiary,
      onTertiary: ThemeColors.redLightOnTertiary,
      tertiaryContainer: ThemeColors.redLightTertiaryContainer,
      onTertiaryContainer: ThemeColors.redLightOnTertiaryContainer,
      error: ThemeColors.redLightError,
      onError: ThemeColors.redLightOnError,
      errorContainer: ThemeColors.redLightErrorContainer,
      onErrorContainer: ThemeColors.redLightOnErrorContainer,
      surface: ThemeColors.redLightSurface,
      onSurface: ThemeColors.redLightOnSurface,
      surfaceContainerHighest: ThemeColors.redLightSurfaceVariant,
      onSurfaceVariant: ThemeColors.redLightOnSurfaceVariant,
      outline: ThemeColors.redLightOutline,
      shadow: ThemeColors.redLightShadow,
    );
  }

  /// Red Theme - Dark (Deep Crimson)
  static ColorScheme _buildRedDarkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.redDarkPrimary,
      onPrimary: ThemeColors.redDarkOnPrimary,
      primaryContainer: ThemeColors.redDarkPrimaryContainer,
      onPrimaryContainer: ThemeColors.redDarkOnPrimaryContainer,
      secondary: ThemeColors.redDarkSecondary,
      onSecondary: ThemeColors.redDarkOnSecondary,
      secondaryContainer: ThemeColors.redDarkSecondaryContainer,
      onSecondaryContainer: ThemeColors.redDarkOnSecondaryContainer,
      tertiary: ThemeColors.redDarkTertiary,
      onTertiary: ThemeColors.redDarkOnTertiary,
      tertiaryContainer: ThemeColors.redDarkTertiaryContainer,
      onTertiaryContainer: ThemeColors.redDarkOnTertiaryContainer,
      error: ThemeColors.redDarkError,
      onError: ThemeColors.redDarkOnError,
      errorContainer: ThemeColors.redDarkErrorContainer,
      onErrorContainer: ThemeColors.redDarkOnErrorContainer,
      surface: ThemeColors.redDarkSurface,
      onSurface: ThemeColors.redDarkOnSurface,
      surfaceContainerHighest: ThemeColors.redDarkSurfaceVariant,
      onSurfaceVariant: ThemeColors.redDarkOnSurfaceVariant,
      outline: ThemeColors.redDarkOutline,
      shadow: ThemeColors.redDarkShadow,
    );
  }

  // ═══════════════════════════════════════════════════════════════════
  // COMPONENT THEME BUILDERS
  // ═══════════════════════════════════════════════════════════════════

  static CardThemeData _buildCardTheme(ColorScheme colorScheme) {
    return CardThemeData(
      color: colorScheme.surface,
      elevation: AppConfig.defaultElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
      ),
      margin: AppConfig.cardMargin,
    );
  }

  static BottomNavigationBarThemeData _buildBottomNavTheme(ColorScheme colorScheme) {
    return BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: colorScheme.onSurfaceVariant,
      backgroundColor: colorScheme.surface,
      elevation: AppConfig.defaultElevation,
    );
  }

  static AppBarTheme _buildAppBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      backgroundColor: AppConfig.transparentColor,
      elevation: 0,
      foregroundColor: colorScheme.onSurface,
      iconTheme: IconThemeData(color: colorScheme.onSurface),
    );
  }

  static ElevatedButtonThemeData _buildElevatedButtonTheme(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        elevation: AppConfig.defaultElevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
        ),
      ),
    );
  }

  static OutlinedButtonThemeData _buildOutlinedButtonTheme(ColorScheme colorScheme) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        side: BorderSide(color: colorScheme.outline),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
        ),
      ),
    );
  }

  static TextButtonThemeData _buildTextButtonTheme(ColorScheme colorScheme) {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppConfig.cardBorderRadius),
        ),
      ),
    );
  }

  static FloatingActionButtonThemeData _buildFABTheme(ColorScheme colorScheme) {
    return FloatingActionButtonThemeData(
      backgroundColor: colorScheme.primaryContainer,
      foregroundColor: colorScheme.onPrimaryContainer,
      elevation: AppConfig.defaultElevation,
    );
  }

  static ChipThemeData _buildChipTheme(ColorScheme colorScheme) {
    return ChipThemeData(
      backgroundColor: colorScheme.surfaceContainerHighest,
      labelStyle: TextStyle(color: colorScheme.onSurfaceVariant),
      side: BorderSide.none,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  // ═══════════════════════════════════════════════════════════════════
  // LEGACY METHODS (for backward compatibility)
  // ═══════════════════════════════════════════════════════════════════

  /// Build light theme (legacy method - defaults to Light style)
  static ThemeData buildLightTheme({bool shadowEnabled = false}) {
    return buildTheme(
      style: ThemeStyle.light,
      isDark: false,
      shadowEnabled: shadowEnabled,
    );
  }

  /// Build dark theme (legacy method - defaults to Dark style)
  static ThemeData buildDarkTheme({bool shadowEnabled = false}) {
    return buildTheme(
      style: ThemeStyle.dark,
      isDark: true,
      shadowEnabled: shadowEnabled,
    );
  }

  /// Get theme mode from boolean value
  static ThemeMode getThemeMode(bool isDark) {
    return isDark ? ThemeMode.dark : ThemeMode.light;
  }
}
