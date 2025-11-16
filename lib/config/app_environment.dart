// lib/config/app_environment.dart
//
// DO NOT MODIFY THIS FILE WITHOUT EXPLICIT APPROVAL
// This file controls critical app configuration and must remain stable

import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// Application environment types
enum AppEnvironment { dev, staging, prod }

/// Centralized, type-safe application configuration
///
/// Fail-fast approach: crashes on startup if config is broken
/// rather than silently failing in production
class AppConfig {
  static const String _envString = String.fromEnvironment(
    'APP_ENV',
    defaultValue: 'development',
  );

  /// Current application environment
  static final AppEnvironment env = switch (_envString) {
    'prod' || 'production' => AppEnvironment.prod,
    'staging' => AppEnvironment.staging,
    'dev' || 'development' || _ => AppEnvironment.dev,
  };

  /// Check if running in production
  static bool get isProd => env == AppEnvironment.prod;

  /// Check if running in development
  static bool get isDev => env == AppEnvironment.dev;

  /// Check if running in staging
  static bool get isStaging => env == AppEnvironment.staging;

  /// Supabase URL with validation
  ///
  /// Throws StateError if:
  /// - URL is empty
  /// - URL contains placeholder text
  /// - URL doesn't start with https:// (in production)
  static String get supabaseUrl {
    const url = String.fromEnvironment('SUPABASE_URL', defaultValue: '');

    if (url.isEmpty) {
      throw StateError('🚨 SUPABASE_URL not configured for environment: $env');
    }

    if (url.contains('YOUR_') || url.contains('PLACEHOLDER')) {
      throw StateError(
        '🚨 SUPABASE_URL contains placeholder value for environment: $env',
      );
    }

    if (isProd && !url.startsWith('https://')) {
      throw StateError(
        '🚨 SUPABASE_URL must use HTTPS in production. Got: $url',
      );
    }

    return url;
  }

  /// Supabase anonymous key with validation
  ///
  /// Throws StateError if:
  /// - Key is empty
  /// - Key contains placeholder text
  /// - Key is too short (< 50 characters)
  static String get supabaseAnonKey {
    const key = String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '');

    if (key.isEmpty) {
      throw StateError(
        '🚨 SUPABASE_ANON_KEY not configured for environment: $env',
      );
    }

    if (key.contains('YOUR_') || key.contains('PLACEHOLDER')) {
      throw StateError(
        '🚨 SUPABASE_ANON_KEY contains placeholder value for environment: $env',
      );
    }

    if (key.length < 50) {
      throw StateError(
        '🚨 SUPABASE_ANON_KEY appears invalid (too short) for environment: $env',
      );
    }

    return key;
  }

  /// Analytics enabled flag
  static bool get analyticsEnabled {
    const enabled = String.fromEnvironment('ENABLE_ANALYTICS', defaultValue: 'false');
    return enabled.toLowerCase() == 'true';
  }

  /// Logging enabled flag
  static bool get loggingEnabled {
    const enabled = String.fromEnvironment('ENABLE_LOGGING', defaultValue: 'true');
    return enabled.toLowerCase() == 'true';
  }
}

/// Runtime health check for app configuration
///
/// Call this ONCE in main() after Supabase initialization
/// to verify connectivity before the app fully starts
Future<void> validateAppConfig() async {
  debugPrint('🔍 Validating app configuration for ${AppConfig.env}...');

  // Verify environment variables were loaded
  try {
    final url = AppConfig.supabaseUrl;
    final key = AppConfig.supabaseAnonKey;
    debugPrint('✅ Environment variables loaded');
    debugPrint('   URL: ${url.substring(0, 30)}...');
    debugPrint('   Key: ${key.substring(0, 20)}...');
  } catch (e) {
    debugPrint('❌ Configuration validation failed: $e');
    rethrow;
  }

  // Health check: ping Supabase to verify connectivity
  try {
    final client = Supabase.instance.client;

    // Try to fetch one row from chapters table (lightweight query)
    await client.from('chapters').select('id').limit(1).timeout(
          const Duration(seconds: 5),
          onTimeout: () => throw TimeoutException('Supabase health check timed out'),
        );

    debugPrint('✅ Supabase connection verified');
  } catch (e) {
    final errorMsg = '⚠️ Supabase health check failed: $e';

    if (AppConfig.isProd) {
      // In production, CRASH if Supabase is unreachable
      // Better to fail loudly than ship broken config
      throw StateError('🚨 PRODUCTION BUILD FAILED HEALTH CHECK: $e');
    } else {
      // In dev/staging, warn but don't crash
      debugPrint(errorMsg);
      debugPrint('⚠️ Continuing in ${AppConfig.env} mode with potential connectivity issues');
    }
  }

  debugPrint('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
  debugPrint('✅ App configuration validated for ${AppConfig.env}');
  debugPrint('━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━');
}

/// Timeout exception for health checks
class TimeoutException implements Exception {
  final String message;
  TimeoutException(this.message);

  @override
  String toString() => message;
}
