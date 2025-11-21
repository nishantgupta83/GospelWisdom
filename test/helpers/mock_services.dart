// test/helpers/mock_services.dart

import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:hive/hive.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:GospelWisdom/core/theme/theme_provider.dart';
import 'package:GospelWisdom/core/theme/app_theme.dart';
import 'package:GospelWisdom/services/settings_service.dart';
import 'package:GospelWisdom/services/supabase_auth_service.dart';
import 'package:GospelWisdom/services/bookmark_service.dart';
import 'package:GospelWisdom/services/chapter_audio_service.dart';
import 'package:GospelWisdom/models/bookmark.dart';

/// Mock ThemeProvider for testing
class MockThemeProvider extends ChangeNotifier implements ThemeProvider {
  bool _isDark = false;
  String _fontPref = 'medium';
  bool _shadowEnabled = false;
  double _backgroundOpacity = 1.0;
  ThemeStyle _themeStyle = ThemeStyle.light;

  @override
  bool get isDark => _isDark;

  @override
  String get fontPref => _fontPref;

  @override
  bool get shadowEnabled => _shadowEnabled;

  @override
  double get backgroundOpacity => _backgroundOpacity;

  @override
  ThemeStyle get themeStyle => _themeStyle;

  @override
  double get textScale => 1.0;

  @override
  ThemeMode get themeMode => _isDark ? ThemeMode.dark : ThemeMode.light;

  @override
  ThemeData get lightTheme => AppTheme.buildLightTheme();

  @override
  ThemeData get darkTheme => AppTheme.buildDarkTheme();

  @override
  ThemeData get currentTheme => AppTheme.buildTheme(
        style: _themeStyle,
        isDark: _isDark,
        shadowEnabled: _shadowEnabled,
      );

  @override
  Future<void> initialize() async {
    // Mock initialization
  }

  @override
  Future<void> updateTheme({
    bool? isDark,
    String? fontPref,
    bool? shadowEnabled,
    double? backgroundOpacity,
    ThemeStyle? themeStyle,
  }) async {
    if (isDark != null) _isDark = isDark;
    if (fontPref != null) _fontPref = fontPref;
    if (shadowEnabled != null) _shadowEnabled = shadowEnabled;
    if (backgroundOpacity != null) _backgroundOpacity = backgroundOpacity;
    if (themeStyle != null) _themeStyle = themeStyle;
    notifyListeners();
  }

  @override
  Future<void> toggleDarkMode() async {
    _isDark = !_isDark;
    notifyListeners();
  }

  @override
  Future<void> setFontSize(String size) async {
    _fontPref = size;
    notifyListeners();
  }

  @override
  Future<void> toggleShadow() async {
    _shadowEnabled = !_shadowEnabled;
    notifyListeners();
  }

  @override
  Future<void> setBackgroundOpacity(double opacity) async {
    _backgroundOpacity = opacity;
    notifyListeners();
  }

  @override
  Future<void> setThemeStyle(ThemeStyle style) async {
    _themeStyle = style;
    notifyListeners();
  }
}

/// Mock SettingsService for testing
class MockSettingsService extends ChangeNotifier implements SettingsService {
  bool _isDarkMode = false;
  String _language = 'en';
  String _fontSize = 'small';
  bool _musicEnabled = true;
  bool _textShadowEnabled = false;
  double _backgroundOpacity = 1.0;
  late MockHiveBox _mockBox;
  DateTime? _lastCacheRefreshDate;

  MockSettingsService() {
    _mockBox = MockHiveBox();
  }

  @override
  bool get isDarkMode => _isDarkMode;

  @override
  set isDarkMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  @override
  String get language => _language;

  @override
  set language(String value) {
    _language = value;
    notifyListeners();
  }

  @override
  String get fontSize => _fontSize;

  @override
  set fontSize(String value) {
    _fontSize = value;
    notifyListeners();
  }

  @override
  bool get musicEnabled => _musicEnabled;

  @override
  set musicEnabled(bool value) {
    _musicEnabled = value;
    notifyListeners();
  }

  @override
  bool get textShadowEnabled => _textShadowEnabled;

  @override
  set textShadowEnabled(bool value) {
    _textShadowEnabled = value;
    notifyListeners();
  }

  @override
  double get backgroundOpacity => _backgroundOpacity;

  @override
  set backgroundOpacity(double value) {
    _backgroundOpacity = value;
    notifyListeners();
  }

  @override
  ThemeMode get themeMode => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  @override
  void setTheme(ThemeMode mode) {
    _isDarkMode = (mode == ThemeMode.dark);
    notifyListeners();
  }

  @override
  void setFontSize(String size) {
    _fontSize = size;
    notifyListeners();
  }

  @override
  void setAppLanguage(String langCode) {
    _language = langCode;
    notifyListeners();
  }

  @override
  DateTime? get lastCacheRefreshDate => _lastCacheRefreshDate;

  @override
  void setLastCacheRefreshDate(DateTime date) {
    _lastCacheRefreshDate = date;
    notifyListeners();
  }

  @override
  bool get canRefreshCache {
    if (_lastCacheRefreshDate == null) return true;
    final daysSinceRefresh = DateTime.now().difference(_lastCacheRefreshDate!).inDays;
    return daysSinceRefresh >= 20;
  }

  @override
  int get daysUntilNextRefresh {
    if (_lastCacheRefreshDate == null) return 0;
    final daysSinceRefresh = DateTime.now().difference(_lastCacheRefreshDate!).inDays;
    final remaining = 20 - daysSinceRefresh;
    return remaining > 0 ? remaining : 0;
  }

  @override
  Box get box => _mockBox;
}

/// Mock SupabaseAuthService for testing
class MockSupabaseAuthService extends ChangeNotifier implements SupabaseAuthService {
  bool _isLoading = false;
  String? _error;
  bool _isAuthenticated = false;
  bool _isAnonymous = false;
  User? _currentUser;

  @override
  bool get isLoading => _isLoading;

  @override
  String? get error => _error;

  @override
  bool get isAuthenticated => _isAuthenticated;

  @override
  bool get isAnonymous => _isAnonymous;

  @override
  User? get currentUser => _currentUser;

  @override
  String? get userEmail => _currentUser?.email;

  @override
  String? get userId => _currentUser?.id;

  @override
  String? get displayName => 'Test User';

  @override
  String get databaseUserId => _currentUser?.id ?? 'test-device-id';

  /// Set the current user for testing
  void setCurrentUser(User? user) {
    _currentUser = user;
    _isAuthenticated = user != null;
    notifyListeners();
  }

  @override
  Future<bool> signUpWithEmail(String email, String password, String name) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAuthenticated = true;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> signInWithEmail(String email, String password) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAuthenticated = true;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> signInAnonymously() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAnonymous = true;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> continueAsAnonymous() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAnonymous = true;
    notifyListeners();
    return true;
  }

  @override
  Future<void> signOut() async {
    _isAuthenticated = false;
    _isAnonymous = false;
    _currentUser = null;
    notifyListeners();
  }

  @override
  Future<bool> resetPassword(String email) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> updatePassword(String newPassword) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> verifyOTP(String email, String token) async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAuthenticated = true;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> deleteAccount() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAuthenticated = false;
    _currentUser = null;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> signInWithGoogle() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAuthenticated = true;
    notifyListeners();
    return true;
  }

  @override
  Future<bool> signInWithApple() async {
    _isLoading = true;
    notifyListeners();
    await Future.delayed(const Duration(milliseconds: 100));
    _isLoading = false;
    _isAuthenticated = true;
    notifyListeners();
    return true;
  }

  @override
  Stream<bool> get authStateChanges => Stream.value(_isAuthenticated);

  @override
  Future<void> initialize() async {
    // Mock initialization
  }

  @override
  Future<bool> checkUserExists(String email) async => false;

  @override
  void clearError() {
    _error = null;
    notifyListeners();
  }

  /// Helper methods for testing
  void setError(String error) {
    _error = error;
    notifyListeners();
  }

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setAuthenticated(bool authenticated) {
    _isAuthenticated = authenticated;
    notifyListeners();
  }

  void setAnonymous(bool anonymous) {
    _isAnonymous = anonymous;
    notifyListeners();
  }
}

/// Mock Hive Box for testing SettingsService
class MockHiveBox extends Mock implements Box {
  final Map<String, dynamic> _data = {};

  @override
  Future<void> put(key, value) async {
    _data[key.toString()] = value;
  }

  @override
  get(key, {defaultValue}) {
    return _data[key.toString()] ?? defaultValue;
  }

  @override
  bool containsKey(key) {
    return _data.containsKey(key.toString());
  }

  @override
  Future<void> delete(key) async {
    _data.remove(key.toString());
  }

  @override
  Future<int> clear() async {
    final count = _data.length;
    _data.clear();
    return count;
  }

  @override
  int get length => _data.length;

  @override
  Iterable get keys => _data.keys;

  @override
  Iterable get values => _data.values;
}

/// Mock BookmarkService for testing
class MockBookmarkService extends Mock implements BookmarkService {
  final List<Bookmark> _bookmarks = [];

  @override
  List<Bookmark> get bookmarks => _bookmarks;

  @override
  Future<bool> addBookmark({
    required BookmarkType bookmarkType,
    required int referenceId,
    required int chapterId,
    required String title,
    String? contentPreview,
    String? notes,
    List<String> tags = const [],
    bool isHighlighted = false,
    HighlightColor highlightColor = HighlightColor.yellow,
  }) async {
    final bookmark = Bookmark.create(
      userDeviceId: 'test-device',
      bookmarkType: bookmarkType,
      referenceId: referenceId,
      chapterId: chapterId,
      title: title,
      contentPreview: contentPreview,
      notes: notes,
      tags: tags,
      isHighlighted: isHighlighted,
      highlightColor: highlightColor,
    );
    _bookmarks.add(bookmark);
    return true;
  }

  @override
  Future<bool> deleteBookmark(String id) async {
    _bookmarks.removeWhere((b) => b.id == id);
    return true;
  }

  @override
  Future<bool> updateBookmark({
    required String bookmarkId,
    String? notes,
    List<String>? tags,
    bool? isHighlighted,
    HighlightColor? highlightColor,
  }) async {
    final index = _bookmarks.indexWhere((b) => b.id == bookmarkId);
    if (index != -1) {
      final updated = _bookmarks[index].copyWith(
        notes: notes,
        tags: tags,
        isHighlighted: isHighlighted,
        highlightColor: highlightColor,
      );
      _bookmarks[index] = updated;
      return true;
    }
    return false;
  }

  @override
  bool isBookmarked(BookmarkType type, int referenceId) {
    return _bookmarks.any(
      (b) => b.bookmarkType == type && b.referenceId == referenceId,
    );
  }

  @override
  Bookmark? getBookmark(BookmarkType type, int referenceId) {
    try {
      return _bookmarks.firstWhere(
        (b) => b.bookmarkType == type && b.referenceId == referenceId,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> removeBookmark(String id) async {
    return await deleteBookmark(id);
  }
}

/// Mock ChapterAudioService for testing
class MockChapterAudioService extends ChangeNotifier implements ChapterAudioService {
  bool _isPlaying = false;
  bool _isLoading = false;
  String? _currentChapterId;

  @override
  bool get isPlaying => _isPlaying;

  @override
  bool get isLoading => _isLoading;

  @override
  String? get currentChapterId => _currentChapterId;

  void setMockState({
    bool? isPlaying,
    bool? isLoading,
    String? currentChapterId,
  }) {
    if (isPlaying != null) _isPlaying = isPlaying;
    if (isLoading != null) _isLoading = isLoading;
    if (currentChapterId != null) _currentChapterId = currentChapterId;
    notifyListeners();
  }

  Future<void> playChapter(String chapterId) async {
    _currentChapterId = chapterId;
    _isLoading = true;
    notifyListeners();

    await Future.delayed(const Duration(milliseconds: 100));

    _isLoading = false;
    _isPlaying = true;
    notifyListeners();
  }

  Future<void> pause() async {
    _isPlaying = false;
    notifyListeners();
  }

  Future<void> resume() async {
    _isPlaying = true;
    notifyListeners();
  }

  Future<void> stop() async {
    _isPlaying = false;
    _currentChapterId = null;
    notifyListeners();
  }
}
