// flutter_core/lib/usecases/app_config_usecase.dart

/// App configuration use case - provides app metadata to native layer
class AppConfigUseCase {
  static const String _appName = 'Gospel Wisdom';
  static const String _appVersion = '1.0.96';
  static const int _buildNumber = 96;
  static const int _apiVersion = 1;

  /// Get app configuration
  Future<Map<String, dynamic>> getConfig() async {
    return {
      'appName': _appName,
      'appVersion': _appVersion,
      'buildNumber': _buildNumber,
      'apiVersion': _apiVersion,
      'supportedLocales': ['en', 'es', 'hi', 'de', 'fr', 'it'],
      'features': {
        'journal': true,
        'bookmarks': true,
        'scenarios': true,
        'search': true,
        'audio': true,
        'widgets': true,
      },
    };
  }
}
