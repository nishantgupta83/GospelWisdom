// test/helpers/widget_test_helpers.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:GospelWisdom/core/theme/theme_provider.dart';
import 'package:GospelWisdom/services/settings_service.dart';
import 'mock_services.dart';

/// Widget test utilities and pump helpers
class WidgetTestHelpers {
  /// Create a basic test widget wrapped with MaterialApp
  static Widget createTestWidget(Widget child) {
    return MaterialApp(
      home: Scaffold(
        body: child,
      ),
    );
  }

  /// Create a test widget with theme support
  static Widget createTestWidgetWithTheme(
    Widget child, {
    ThemeData? theme,
    ThemeData? darkTheme,
    ThemeMode? themeMode,
  }) {
    return MaterialApp(
      theme: theme ?? ThemeData.light(),
      darkTheme: darkTheme ?? ThemeData.dark(),
      themeMode: themeMode ?? ThemeMode.light,
      home: Scaffold(
        body: child,
      ),
    );
  }

  /// Create a test widget with ThemeProvider
  static Widget createTestWidgetWithThemeProvider(
    Widget child, {
    ThemeProvider? themeProvider,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => themeProvider ?? MockThemeProvider(),
        ),
        ChangeNotifierProvider<SettingsService>(
          create: (_) => MockSettingsService(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final provider = context.watch<ThemeProvider>();
          return MaterialApp(
            theme: provider.currentTheme,
            themeMode: provider.themeMode,
            home: Scaffold(
              body: child,
            ),
          );
        },
      ),
    );
  }

  /// Create a test widget with multiple providers
  static Widget createTestWidgetWithProviders(
    Widget child, {
    ThemeProvider? themeProvider,
    SettingsService? settingsService,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => themeProvider ?? MockThemeProvider(),
        ),
        ChangeNotifierProvider<SettingsService>(
          create: (_) => settingsService ?? MockSettingsService(),
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: child,
        ),
      ),
    );
  }

  /// Pump and settle with custom duration
  static Future<void> pumpAndSettle(
    WidgetTester tester, {
    Duration duration = const Duration(milliseconds: 300),
  }) async {
    await tester.pump(duration);
    await tester.pumpAndSettle();
  }

  /// Find a widget by text
  static Finder findByText(String text) {
    return find.text(text);
  }

  /// Find a widget by key
  static Finder findByKey(Key key) {
    return find.byKey(key);
  }

  /// Find a widget by type
  static Finder findByType<T>() {
    return find.byType(T);
  }

  /// Verify widget exists
  static void expectWidgetExists(Finder finder) {
    expect(finder, findsOneWidget);
  }

  /// Verify widget does not exist
  static void expectWidgetDoesNotExist(Finder finder) {
    expect(finder, findsNothing);
  }

  /// Verify text exists
  static void expectTextExists(String text) {
    expect(find.text(text), findsOneWidget);
  }

  /// Tap a widget and wait for animation
  static Future<void> tapAndSettle(
    WidgetTester tester,
    Finder finder,
  ) async {
    await tester.tap(finder);
    await tester.pumpAndSettle();
  }

  /// Enter text into a text field
  static Future<void> enterText(
    WidgetTester tester,
    Finder finder,
    String text,
  ) async {
    await tester.enterText(finder, text);
    await tester.pumpAndSettle();
  }

  /// Scroll a widget
  static Future<void> scrollWidget(
    WidgetTester tester,
    Finder finder,
    Offset offset,
  ) async {
    await tester.drag(finder, offset);
    await tester.pumpAndSettle();
  }

  /// Wait for a specific duration
  static Future<void> wait(
    WidgetTester tester,
    Duration duration,
  ) async {
    await tester.pump(duration);
  }

  /// Create test widget with all common providers
  static Widget pumpWithProviders({
    required Widget child,
    ThemeProvider? themeProvider,
    SettingsService? settingsService,
  }) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(
          create: (_) => themeProvider ?? MockThemeProvider(),
        ),
        ChangeNotifierProvider<SettingsService>(
          create: (_) => settingsService ?? MockSettingsService(),
        ),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: child,
        ),
      ),
    );
  }

  /// Get theme data from provider
  static ThemeData getThemeData(BuildContext context) {
    final themeProvider = context.watch<ThemeProvider>();
    return themeProvider.currentTheme;
  }

  /// Verify widget visibility
  static bool isWidgetVisible(
    WidgetTester tester,
    Finder finder,
  ) {
    final result = finder.evaluate();
    return result.isNotEmpty;
  }

  /// Wait for widget to appear
  static Future<void> waitForWidget(
    WidgetTester tester,
    Finder finder,
  ) async {
    await tester.pumpAndSettle();
    expect(finder, findsOneWidget);
  }

  /// Tap widget multiple times
  static Future<void> tapMultiple(
    WidgetTester tester,
    Finder finder,
    int times,
  ) async {
    for (int i = 0; i < times; i++) {
      await tester.tap(finder);
      await tester.pumpAndSettle();
    }
  }

  /// Drag and drop simulation
  static Future<void> dragAndDrop(
    WidgetTester tester,
    Finder source,
    Finder target,
  ) async {
    await tester.drag(source, const Offset(100, 0));
    await tester.pumpAndSettle();
  }

  /// Scroll to find widget
  static Future<void> scrollUntilVisible(
    WidgetTester tester,
    Finder finder,
  ) async {
    await tester.scrollUntilVisible(finder, 100);
    await tester.pumpAndSettle();
  }

  /// Verify widget properties
  static void verifyWidgetProperties(
    WidgetTester tester,
    Finder finder, {
    String? expectedText,
    Key? expectedKey,
  }) {
    expect(finder, findsOneWidget);
    if (expectedText != null) {
      expect(find.text(expectedText), findsOneWidget);
    }
    if (expectedKey != null) {
      expect(find.byKey(expectedKey), findsOneWidget);
    }
  }

  /// Create test context with providers
  static Future<BuildContext> getContext(WidgetTester tester) async {
    BuildContext? context;
    await tester.pumpWidget(
      Builder(
        builder: (BuildContext bc) {
          context = bc;
          return const MaterialApp(
            home: Scaffold(body: SizedBox.expand()),
          );
        },
      ),
    );
    return context!;
  }
}
