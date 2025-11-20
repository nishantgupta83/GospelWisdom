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
      case ThemeStyle.paper:
        return brightness == Brightness.light
            ? _buildPaperLightColorScheme()
            : _buildPaperDarkColorScheme();
      case ThemeStyle.sage:
        return brightness == Brightness.light
            ? _buildSageLightColorScheme()
            : _buildSageDarkColorScheme();
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

  /// Paper Theme - Light (Vintage Cream)
  static ColorScheme _buildPaperLightColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.paperLightPrimary,
      onPrimary: ThemeColors.paperLightOnPrimary,
      primaryContainer: ThemeColors.paperLightPrimaryContainer,
      onPrimaryContainer: ThemeColors.paperLightOnPrimaryContainer,
      secondary: ThemeColors.paperLightSecondary,
      onSecondary: ThemeColors.paperLightOnSecondary,
      secondaryContainer: ThemeColors.paperLightSecondaryContainer,
      onSecondaryContainer: ThemeColors.paperLightOnSecondaryContainer,
      tertiary: ThemeColors.paperLightTertiary,
      onTertiary: ThemeColors.paperLightOnTertiary,
      tertiaryContainer: ThemeColors.paperLightTertiaryContainer,
      onTertiaryContainer: ThemeColors.paperLightOnTertiaryContainer,
      error: ThemeColors.paperLightError,
      onError: ThemeColors.paperLightOnError,
      errorContainer: ThemeColors.paperLightErrorContainer,
      onErrorContainer: ThemeColors.paperLightOnErrorContainer,
      surface: ThemeColors.paperLightSurface,
      onSurface: ThemeColors.paperLightOnSurface,
      surfaceContainerHighest: ThemeColors.paperLightSurfaceVariant,
      onSurfaceVariant: ThemeColors.paperLightOnSurfaceVariant,
      outline: ThemeColors.paperLightOutline,
      shadow: ThemeColors.paperLightShadow,
    );
  }

  /// Paper Theme - Dark (Dark Parchment)
  static ColorScheme _buildPaperDarkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.paperDarkPrimary,
      onPrimary: ThemeColors.paperDarkOnPrimary,
      primaryContainer: ThemeColors.paperDarkPrimaryContainer,
      onPrimaryContainer: ThemeColors.paperDarkOnPrimaryContainer,
      secondary: ThemeColors.paperDarkSecondary,
      onSecondary: ThemeColors.paperDarkOnSecondary,
      secondaryContainer: ThemeColors.paperDarkSecondaryContainer,
      onSecondaryContainer: ThemeColors.paperDarkOnSecondaryContainer,
      tertiary: ThemeColors.paperDarkTertiary,
      onTertiary: ThemeColors.paperDarkOnTertiary,
      tertiaryContainer: ThemeColors.paperDarkTertiaryContainer,
      onTertiaryContainer: ThemeColors.paperDarkOnTertiaryContainer,
      error: ThemeColors.paperDarkError,
      onError: ThemeColors.paperDarkOnError,
      errorContainer: ThemeColors.paperDarkErrorContainer,
      onErrorContainer: ThemeColors.paperDarkOnErrorContainer,
      surface: ThemeColors.paperDarkSurface,
      onSurface: ThemeColors.paperDarkOnSurface,
      surfaceContainerHighest: ThemeColors.paperDarkSurfaceVariant,
      onSurfaceVariant: ThemeColors.paperDarkOnSurfaceVariant,
      outline: ThemeColors.paperDarkOutline,
      shadow: ThemeColors.paperDarkShadow,
    );
  }

  /// Sage Theme - Light (Earthy Sage Green)
  static ColorScheme _buildSageLightColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: ThemeColors.sageLightPrimary,
      onPrimary: ThemeColors.sageLightOnPrimary,
      primaryContainer: ThemeColors.sageLightPrimaryContainer,
      onPrimaryContainer: ThemeColors.sageLightOnPrimaryContainer,
      secondary: ThemeColors.sageLightSecondary,
      onSecondary: ThemeColors.sageLightOnSecondary,
      secondaryContainer: ThemeColors.sageLightSecondaryContainer,
      onSecondaryContainer: ThemeColors.sageLightOnSecondaryContainer,
      tertiary: ThemeColors.sageLightTertiary,
      onTertiary: ThemeColors.sageLightOnTertiary,
      tertiaryContainer: ThemeColors.sageLightTertiaryContainer,
      onTertiaryContainer: ThemeColors.sageLightOnTertiaryContainer,
      error: ThemeColors.sageLightError,
      onError: ThemeColors.sageLightOnError,
      errorContainer: ThemeColors.sageLightErrorContainer,
      onErrorContainer: ThemeColors.sageLightOnErrorContainer,
      surface: ThemeColors.sageLightSurface,
      onSurface: ThemeColors.sageLightOnSurface,
      surfaceContainerHighest: ThemeColors.sageLightSurfaceVariant,
      onSurfaceVariant: ThemeColors.sageLightOnSurfaceVariant,
      outline: ThemeColors.sageLightOutline,
      shadow: ThemeColors.sageLightShadow,
    );
  }

  /// Sage Theme - Dark (Deep Forest Green)
  static ColorScheme _buildSageDarkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: ThemeColors.sageDarkPrimary,
      onPrimary: ThemeColors.sageDarkOnPrimary,
      primaryContainer: ThemeColors.sageDarkPrimaryContainer,
      onPrimaryContainer: ThemeColors.sageDarkOnPrimaryContainer,
      secondary: ThemeColors.sageDarkSecondary,
      onSecondary: ThemeColors.sageDarkOnSecondary,
      secondaryContainer: ThemeColors.sageDarkSecondaryContainer,
      onSecondaryContainer: ThemeColors.sageDarkOnSecondaryContainer,
      tertiary: ThemeColors.sageDarkTertiary,
      onTertiary: ThemeColors.sageDarkOnTertiary,
      tertiaryContainer: ThemeColors.sageDarkTertiaryContainer,
      onTertiaryContainer: ThemeColors.sageDarkOnTertiaryContainer,
      error: ThemeColors.sageDarkError,
      onError: ThemeColors.sageDarkOnError,
      errorContainer: ThemeColors.sageDarkErrorContainer,
      onErrorContainer: ThemeColors.sageDarkOnErrorContainer,
      surface: ThemeColors.sageDarkSurface,
      onSurface: ThemeColors.sageDarkOnSurface,
      surfaceContainerHighest: ThemeColors.sageDarkSurfaceVariant,
      onSurfaceVariant: ThemeColors.sageDarkOnSurfaceVariant,
      outline: ThemeColors.sageDarkOutline,
      shadow: ThemeColors.sageDarkShadow,
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
