// test/config_test.dart
//
// Automated configuration validation tests
// Run before every production build to catch config issues early

import 'package:flutter_test/flutter_test.dart';
import 'package:oldwisdom/config/app_environment.dart';

void main() {
  group('Production Config Validation', () {
    test('Supabase URL is valid in production', () {
      // This test only runs when APP_ENV=production is set
      const envString = String.fromEnvironment('APP_ENV', defaultValue: 'development');

      if (envString == 'production' || envString == 'prod') {
        final url = AppConfig.supabaseUrl;

        // Verify URL is HTTPS
        expect(url.startsWith('https://'), isTrue, reason: 'Production must use HTTPS');

        // Verify URL is not placeholder
        expect(url.contains('YOUR_'), isFalse, reason: 'URL contains placeholder text');
        expect(url.contains('PLACEHOLDER'), isFalse, reason: 'URL contains placeholder text');

        // Verify URL is not empty
        expect(url.isNotEmpty, isTrue, reason: 'URL cannot be empty');

        // Verify URL length is reasonable (Supabase URLs are typically 40+ chars)
        expect(url.length, greaterThan(30), reason: 'URL appears too short');
      }
    });

    test('Supabase anon key is valid in production', () {
      const envString = String.fromEnvironment('APP_ENV', defaultValue: 'development');

      if (envString == 'production' || envString == 'prod') {
        final key = AppConfig.supabaseAnonKey;

        // Verify key is not placeholder
        expect(key.contains('YOUR_'), isFalse, reason: 'Key contains placeholder text');
        expect(key.contains('PLACEHOLDER'), isFalse, reason: 'Key contains placeholder text');

        // Verify key is not empty
        expect(key.isNotEmpty, isTrue, reason: 'Key cannot be empty');

        // Verify key length is reasonable (JWT tokens are typically 100+ chars)
        expect(key.length, greaterThan(50), reason: 'Key appears too short for JWT token');
      }
    });

    test('Environment detection works correctly', () {
      const envString = String.fromEnvironment('APP_ENV', defaultValue: 'development');

      // Verify environment is detected
      expect(AppConfig.env, isNotNull);

      // Verify flags work correctly
      if (envString == 'production' || envString == 'prod') {
        expect(AppConfig.isProd, isTrue);
        expect(AppConfig.isDev, isFalse);
      } else if (envString == 'development' || envString == 'dev') {
        expect(AppConfig.isDev, isTrue);
        expect(AppConfig.isProd, isFalse);
      }
    });

    test('Config does not throw errors on access', () {
      // This verifies that accessing config doesn't crash
      // Even if values are placeholders, accessing them should not throw
      // (unless explicitly checking in production)

      expect(() {
        final _ = AppConfig.analyticsEnabled;
        final __ = AppConfig.loggingEnabled;
      }, returnsNormally);
    });
  });

  group('Development Config Validation', () {
    test('Development environment allows missing config', () {
      const envString = String.fromEnvironment('APP_ENV', defaultValue: 'development');

      if (envString == 'development' || envString == 'dev') {
        // In dev, we're more lenient
        // Just verify that accessing config doesn't crash
        expect(() => AppConfig.env, returnsNormally);
      }
    });
  });
}
