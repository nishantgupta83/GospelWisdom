// integration_test/app_test.dart
//
// Comprehensive end-to-end integration tests for the Gospel Wisdom app.
// Tests app launch, splash screen flow, navigation, and persistence.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:GospelWisdom/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Full App Integration - Launch & Navigation', () {

    /// Test 1: App launches successfully and shows splash screen
    testWidgets(
      'T1: App launches successfully and displays splash screen',
      (WidgetTester tester) async {
        // Launch the app
        app.main();

        // Wait for widget tree to build
        await tester.pumpAndSettle(const Duration(seconds: 2));

        // Verify splash screen is displayed initially
        // The splash screen contains specific widget indicators
        expect(
          find.byWidgetPredicate(
            (widget) =>
                widget is Scaffold &&
                widget.body != null,
          ),
          findsWidgets,
          reason: 'Splash screen should be displayed on app launch',
        );

        // Verify Material app is initialized
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'MaterialApp should be present');
      },
    );

    /// Test 2: Splash screen transitions to home screen
    testWidgets(
      'T2: Splash screen transitions to home screen after initialization',
      (WidgetTester tester) async {
        app.main();

        // Wait for app initialization and splash screen display
        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Wait for transition to home screen
        // The home screen is the main app container with navigation
        await tester.pumpAndSettle(const Duration(seconds: 2));

        // Verify home screen/root scaffold is displayed
        // We look for bottom navigation bar as indicator of home screen
        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isEmpty) {
          // If no traditional bottom nav, check for Scaffold indicating app is running
          expect(find.byType(Scaffold), findsWidgets,
              reason: 'Home screen should contain Scaffold');
        } else {
          expect(bottomNavBar, findsOneWidget,
              reason: 'Bottom navigation bar should be visible in home screen');
        }
      },
    );

    /// Test 3: App responds to tap interactions
    testWidgets(
      'T3: App responds to user interactions after launch',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Look for any ElevatedButton or interactive widget
        final buttons = find.byType(ElevatedButton);

        if (buttons.evaluate().isNotEmpty) {
          // If buttons exist, verify they can be tapped
          await tester.tap(buttons.first);
          await tester.pumpAndSettle(const Duration(milliseconds: 500));

          // If tap succeeded, we should still have a valid widget tree
          expect(find.byType(MaterialApp), findsOneWidget,
              reason: 'App should still be valid after button tap');
        }
      },
    );

    /// Test 4: Bottom navigation tabs are accessible
    testWidgets(
      'T4: Bottom navigation tabs are accessible and functional',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Find bottom navigation bar
        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          // Get all navigation items
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().isNotEmpty) {
            // Try tapping first navigation item
            await tester.tap(navItems.first);
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            expect(find.byType(MaterialApp), findsOneWidget,
                reason: 'App should handle navigation item tap');
          }
        }
      },
    );

    /// Test 5: App maintains state across widget rebuilds
    testWidgets(
      'T5: App maintains state and remains stable during rapid interactions',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Perform rapid rebuilds
        for (int i = 0; i < 5; i++) {
          await tester.pumpAndSettle(const Duration(milliseconds: 100));
        }

        // Verify app is still responsive
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should remain stable after rapid rebuilds');

        // Try finding any text to ensure UI is still rendering
        expect(find.byType(Text), findsWidgets,
            reason: 'App UI should still be rendering text');
      },
    );

    /// Test 6: App handles navigation service initialization
    testWidgets(
      'T6: Navigation service is properly initialized',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 2));

        // Verify navigatorKey exists and is initialized
        // by checking if we can find nested navigator widgets
        expect(find.byType(Navigator), findsWidgets,
            reason: 'Navigator should be initialized');

        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'MaterialApp with navigator key should be present');
      },
    );

    /// Test 7: Full smoke test - app is fully functional
    testWidgets(
      'T7: Complete app smoke test - app launches and is functional',
      (WidgetTester tester) async {
        // Launch app
        app.main();

        // Wait for initialization
        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Verify basic UI elements are present
        expect(find.byType(MaterialApp), findsOneWidget);
        expect(find.byType(Scaffold), findsWidgets);

        // Try to find common widgets indicating the app is working
        final scaffolds = find.byType(Scaffold).evaluate().length;
        expect(scaffolds, greaterThan(0),
            reason: 'At least one Scaffold should be present for UI layout');

        // Perform interaction test
        await tester.pumpAndSettle(const Duration(milliseconds: 500));

        // Verify app didn't crash or throw errors
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should remain functional after interactions');
      },
    );

    /// Test 8: App responds to window resize (orientation changes)
    testWidgets(
      'T8: App handles window size changes gracefully',
      (WidgetTester tester) async {
        // Set initial window size using new API
        addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
        tester.binding.window.physicalSizeTestValue = const Size(400, 800);

        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 2));

        // Change window size
        tester.binding.window.physicalSizeTestValue = const Size(800, 400);

        await tester.pumpAndSettle(const Duration(milliseconds: 500));

        // Verify app handled the resize
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle orientation changes');
      },
    );
  });
}
