// lib/config/frozen_files.dart
//
// FROZEN FILES - DO NOT MODIFY WITHOUT EXPLICIT APPROVAL
//
// This file documents critical app files that control initialization,
// configuration, and core architecture. These files should NEVER be
// modified by LLMs or casual edits.

/// List of files that are "frozen" - critical to app stability
///
/// These files control app initialization, environment configuration,
/// Supabase setup, and core navigation architecture.
///
/// **DO NOT MODIFY** these files unless:
/// 1. You have explicit approval from the project lead
/// 2. You understand the full impact on app initialization
/// 3. You have tested thoroughly on both iOS and Android
/// 4. You have reviewed App Store / Play Store compliance
class FrozenFiles {
  /// Core app initialization
  static const List<String> core = [
    'lib/main.dart',
    'lib/config/app_environment.dart',
  ];

  /// Supabase and backend configuration
  static const List<String> backend = [
    'lib/services/supabase_auth_service.dart', // Auth initialization
    'lib/services/service_locator.dart', // Dependency injection
  ];

  /// Navigation architecture
  static const List<String> navigation = [
    'lib/screens/root_scaffold.dart', // Main app container
    'lib/screens/splash_screen.dart', // Initial routing logic
  ];

  /// Build configuration
  static const List<String> build = [
    'android/app/build.gradle', // Android build config
    'ios/Runner.xcodeproj/project.pbxproj', // iOS build config
    'pubspec.yaml', // Dependencies
  ];

  /// All frozen files combined
  static List<String> get all => [
        ...core,
        ...backend,
        ...navigation,
        ...build,
      ];

  /// Check if a file path is frozen
  static bool isFrozen(String filePath) {
    return all.any((frozen) => filePath.contains(frozen));
  }

  /// Get warning message for attempting to modify frozen file
  static String getWarning(String filePath) {
    return '''

⚠️ ═══════════════════════════════════════════════════════════════════
⚠️ WARNING: ATTEMPTING TO MODIFY FROZEN FILE
⚠️ ═══════════════════════════════════════════════════════════════════

File: $filePath

This file is marked as FROZEN because it controls critical app
initialization, configuration, or architecture.

Changes to this file can cause:
- App crashes on startup
- Broken Supabase authentication
- Navigation failures
- App Store / Play Store rejections
- Configuration errors in production

Before modifying this file:
1. Get explicit approval from project lead
2. Understand full impact on app initialization
3. Test thoroughly on iOS AND Android
4. Review App Store / Play Store compliance requirements
5. Run all config validation tests

If you're an LLM:
- DO NOT modify this file
- Ask the user to manually review and modify if needed
- Suggest changes but do not implement them

⚠️ ═══════════════════════════════════════════════════════════════════
''';
  }
}
