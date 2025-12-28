// flutter_core/lib/usecases/auth_usecase.dart

/// Authentication use case - wraps auth service for bridge API
class AuthUseCase {
  // TODO: Inject SupabaseAuthService when migrated

  /// Get current auth state
  Future<Map<String, dynamic>> getAuthState() async {
    // TODO: Call actual service
    // final isAuth = _service.isAuthenticated;
    // final user = _service.currentUser;

    return {
      'isAuthenticated': false,
      'isAnonymous': false,
      'user': null,
      // When authenticated:
      // 'user': {
      //   'id': user.id,
      //   'email': user.email,
      //   'displayName': user.displayName,
      //   'avatarUrl': user.avatarUrl,
      //   'provider': 'google' | 'apple' | 'email',
      // },
    };
  }

  /// Sign in with Google
  Future<Map<String, dynamic>> signInWithGoogle() async {
    // TODO: Call actual service
    // await _service.signInWithGoogle();

    return {
      'success': false,
      'error': 'Not implemented in flutter_core yet',
    };
  }

  /// Sign in with Apple
  Future<Map<String, dynamic>> signInWithApple() async {
    // TODO: Call actual service
    // await _service.signInWithApple();

    return {
      'success': false,
      'error': 'Not implemented in flutter_core yet',
    };
  }

  /// Sign in with email/password
  Future<Map<String, dynamic>> signInWithEmail(String email, String password) async {
    // TODO: Call actual service
    // await _service.signInWithEmail(email, password);

    return {
      'success': false,
      'error': 'Not implemented in flutter_core yet',
    };
  }

  /// Sign up with email
  Future<Map<String, dynamic>> signUp(String email, String password, String? name) async {
    // TODO: Call actual service

    return {
      'success': false,
      'error': 'Not implemented in flutter_core yet',
    };
  }

  /// Sign out
  Future<bool> signOut() async {
    // TODO: Call actual service
    // await _service.signOut();
    return true;
  }

  /// Delete account
  Future<bool> deleteAccount() async {
    // TODO: Call actual service
    // await _service.deleteAccount();
    return false;
  }

  /// Reset password
  Future<bool> resetPassword(String email) async {
    // TODO: Call actual service
    // await _service.resetPassword(email);
    return false;
  }
}
