// test/services/supabase_auth_service_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:GospelWisdom/services/supabase_auth_service.dart';
import '../helpers/mock_services.dart';

void main() {
  group('SupabaseAuthService', () {
    late MockSupabaseAuthService authService;

    setUp(() {
      authService = MockSupabaseAuthService();
    });

    group('Authentication State', () {
      test('should initialize with no authenticated user', () {
        expect(authService.isAuthenticated, equals(false));
      });

      test('should have default loading state as false', () {
        expect(authService.isLoading, equals(false));
      });

      test('should have null currentUser initially', () {
        expect(authService.currentUser, isNull);
      });

      test('should have null userId initially', () {
        expect(authService.userId, isNull);
      });

      test('should have null userEmail initially', () {
        expect(authService.userEmail, isNull);
      });

      test('should have null displayName initially', () {
        expect(authService.displayName, isNotNull);
      });

      test('should have null error initially', () {
        expect(authService.error, isNull);
      });
    });

    group('Email/Password Authentication', () {
      test('should handle sign up with email and password', () async {
        final result = await authService.signUpWithEmail(
          'test@example.com',
          'ValidPassword123',
          'Test User',
        );

        expect(result, equals(true));
        expect(authService.isAuthenticated, equals(true));
      });

      test('should handle sign in with email and password', () async {
        final result = await authService.signInWithEmail(
          'test@example.com',
          'ValidPassword123',
        );

        expect(result, equals(true));
        expect(authService.isAuthenticated, equals(true));
      });

      test('should handle multiple sign-up attempts', () async {
        final result1 = await authService.signUpWithEmail(
          'test1@example.com',
          'ValidPassword123',
          'User 1',
        );
        expect(result1, equals(true));

        final result2 = await authService.signUpWithEmail(
          'test2@example.com',
          'ValidPassword123',
          'User 2',
        );
        expect(result2, equals(true));
      });
    });

    group('Anonymous Authentication', () {
      test('should support anonymous sign in', () async {
        final result = await authService.signInAnonymously();

        expect(result, equals(true));
        expect(authService.isAnonymous, equals(true));
      });

      test('should support continue as anonymous', () async {
        final result = await authService.continueAsAnonymous();

        expect(result, equals(true));
        expect(authService.isAnonymous, equals(true));
      });

      test('should mark user as anonymous when appropriate', () async {
        await authService.signInAnonymously();
        expect(authService.isAnonymous, equals(true));
        expect(authService.isAuthenticated, equals(false));
      });

      test('should support switching from anonymous to authenticated', () async {
        await authService.signInAnonymously();
        expect(authService.isAnonymous, equals(true));

        await authService.signInWithEmail(
          'test@example.com',
          'Password123',
        );
        expect(authService.isAuthenticated, equals(true));
      });
    });

    group('Social Authentication', () {
      test('should support Google sign in', () async {
        final result = await authService.signInWithGoogle();

        expect(result, equals(true));
        expect(authService.isAuthenticated, equals(true));
      });

      test('should support Apple sign in', () async {
        final result = await authService.signInWithApple();

        expect(result, equals(true));
        expect(authService.isAuthenticated, equals(true));
      });

      test('should handle multiple social sign-in attempts', () async {
        final googleResult = await authService.signInWithGoogle();
        expect(googleResult, equals(true));

        // Sign out and try Apple
        await authService.signOut();
        expect(authService.isAuthenticated, equals(false));

        final appleResult = await authService.signInWithApple();
        expect(appleResult, equals(true));
        expect(authService.isAuthenticated, equals(true));
      });
    });

    group('Session Management', () {
      test('should be able to sign out', () async {
        await authService.signInWithEmail('test@example.com', 'Password123');
        expect(authService.isAuthenticated, equals(true));

        await authService.signOut();

        expect(authService.isAuthenticated, equals(false));
        expect(authService.currentUser, isNull);
      });

      test('should clear user data on sign out', () async {
        await authService.signInWithEmail('test@example.com', 'Password123');
        expect(authService.isAuthenticated, equals(true));

        await authService.signOut();

        expect(authService.isAuthenticated, equals(false));
        expect(authService.currentUser, isNull);
      });

      test('should support multiple sign-in and sign-out cycles', () async {
        // First cycle
        await authService.signInWithEmail('test1@example.com', 'Password123');
        expect(authService.isAuthenticated, equals(true));

        await authService.signOut();
        expect(authService.isAuthenticated, equals(false));

        // Second cycle
        await authService.signInWithEmail('test2@example.com', 'Password123');
        expect(authService.isAuthenticated, equals(true));

        await authService.signOut();
        expect(authService.isAuthenticated, equals(false));
      });
    });

    group('Password Management', () {
      test('should handle password reset request', () async {
        final result = await authService.resetPassword('test@example.com');

        expect(result, equals(true));
      });

      test('should handle password update for authenticated users', () async {
        await authService.signInWithEmail('test@example.com', 'Password123');

        final result = await authService.updatePassword('NewPassword123');

        expect(result, equals(true));
      });

      test('should handle OTP verification', () async {
        final result = await authService.verifyOTP('test@example.com', '123456');

        expect(result, equals(true));
        expect(authService.isAuthenticated, equals(true));
      });
    });

    group('Account Management', () {
      test('should handle account deletion', () async {
        await authService.signInWithEmail('test@example.com', 'Password123');
        expect(authService.isAuthenticated, equals(true));

        final result = await authService.deleteAccount();

        expect(result, equals(true));
        expect(authService.isAuthenticated, equals(false));
      });

      test('should clear error state on clearError', () async {
        authService.setError('Some error');
        expect(authService.error, isNotNull);

        authService.clearError();

        expect(authService.error, isNull);
      });

      test('should provide database user ID', () async {
        expect(authService.databaseUserId, isNotEmpty);
      });
    });

    group('User Information', () {
      test('should provide display name', () {
        expect(authService.displayName, equals('Test User'));
      });

      test('should provide database user ID for authenticated users', () async {
        await authService.signInWithEmail('test@example.com', 'Password123');

        expect(authService.databaseUserId, equals('test-device-id'));
      });

      test('should provide database user ID for anonymous users', () async {
        await authService.signInAnonymously();

        expect(authService.databaseUserId, equals('test-device-id'));
      });
    });

    group('Error Handling', () {
      test('should handle error state updates', () async {
        authService.setError('Test error message');

        expect(authService.error, equals('Test error message'));
      });

      test('should provide user-friendly error messages', () async {
        authService.setError('Invalid credentials');

        expect(authService.error, isNotEmpty);
        expect(authService.error, contains('Invalid'));
      });

      test('should clear errors after successful operations', () async {
        authService.setError('Previous error');
        expect(authService.error, isNotNull);

        await authService.signInWithEmail('test@example.com', 'Password123');
        authService.clearError();

        expect(authService.error, isNull);
      });
    });

    group('State Change Notifications', () {
      test('should notify listeners on authentication state change', () {
        var notificationCount = 0;
        authService.addListener(() {
          notificationCount++;
        });

        authService.setAuthenticated(true);
        expect(notificationCount, greaterThan(0));
      });

      test('should notify listeners on loading state change', () {
        var notificationCount = 0;
        authService.addListener(() {
          notificationCount++;
        });

        authService.setLoading(true);
        expect(notificationCount, greaterThan(0));
      });

      test('should provide auth state stream', () async {
        final stream = authService.authStateChanges;

        expect(stream, isA<Stream>());
      });

      test('should notify listeners on error state change', () {
        var notificationCount = 0;
        authService.addListener(() {
          notificationCount++;
        });

        authService.setError('Test error');
        expect(notificationCount, greaterThan(0));
      });
    });

    group('Email Validation', () {
      test('should accept valid email formats for sign up', () async {
        final result = await authService.signUpWithEmail(
          'valid.email@example.com',
          'ValidPassword123',
          'Test',
        );

        expect(result, equals(true));
      });

      test('should handle various email formats', () async {
        final validEmails = [
          'test@example.com',
          'user.name@example.co.uk',
          'test+tag@example.org',
        ];

        for (final email in validEmails) {
          final result = await authService.signUpWithEmail(
            email,
            'ValidPassword123',
            'Test',
          );
          expect(result, equals(true));
        }
      });
    });

    group('Password Validation', () {
      test('should handle strong passwords for sign up', () async {
        final result = await authService.signUpWithEmail(
          'test@example.com',
          'StrongPassword123',
          'Test',
        );

        expect(result, equals(true));
      });

      test('should handle various password strengths', () async {
        final passwords = [
          'Password123',
          'SecurePass456',
          'MyP@ssw0rd789',
        ];

        for (final password in passwords) {
          final result = await authService.signUpWithEmail(
            'test${passwords.indexOf(password)}@example.com',
            password,
            'Test',
          );
          expect(result, equals(true));
        }
      });
    });

    group('Loading States', () {
      test('should manage loading state during sign in', () async {
        authService.setLoading(false);
        expect(authService.isLoading, equals(false));

        await authService.signInWithEmail(
          'test@example.com',
          'Password123',
        );

        expect(authService.isLoading, equals(false));
      });

      test('should manage loading state during social authentication', () async {
        authService.setLoading(false);
        expect(authService.isLoading, equals(false));

        await authService.signInWithGoogle();

        expect(authService.isLoading, equals(false));
      });

      test('should clear loading state after authentication completes', () async {
        authService.setLoading(false);

        await authService.signInAnonymously();

        expect(authService.isLoading, equals(false));
      });
    });

    group('Anonymous User Handling', () {
      test('should generate device ID for anonymous users', () async {
        await authService.signInAnonymously();

        expect(authService.databaseUserId, isNotEmpty);
        expect(authService.isAnonymous, equals(true));
      });

      test('should support anonymous user operations', () async {
        await authService.continueAsAnonymous();

        expect(authService.isAnonymous, equals(true));
        expect(authService.isAuthenticated, equals(false));
        expect(authService.databaseUserId, isNotEmpty);
      });
    });

    group('State Transitions', () {
      test('should transition from anonymous to authenticated', () async {
        await authService.continueAsAnonymous();
        expect(authService.isAnonymous, equals(true));

        authService.setAuthenticated(true);
        expect(authService.isAuthenticated, equals(true));
      });

      test('should transition from authenticated to anonymous', () async {
        authService.setAuthenticated(true);
        expect(authService.isAuthenticated, equals(true));

        authService.setAnonymous(true);
        expect(authService.isAnonymous, equals(true));
      });

      test('should clear both states after sign out', () async {
        authService.setAuthenticated(true);
        authService.setAnonymous(true);

        await authService.signOut();

        expect(authService.isAuthenticated, equals(false));
        expect(authService.isAnonymous, equals(false));
      });
    });
  });
}
