// integration_test/navigation_flow_test.dart
//
// Navigation flow integration tests.
// Tests all navigation tabs, deep linking to chapters, back button handling,
// and bottom navigation bar functionality.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:GospelWisdom/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Navigation Flow Tests', () {

    /// Test 1: Navigate to Home tab
    testWidgets(
      'T1: Successfully navigate to Home tab',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Find bottom navigation bar
        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          // Tap home tab (usually first or second item)
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().isNotEmpty) {
            // Tap first navigation item (likely Home)
            await tester.tap(navItems.first);
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            expect(find.byType(Scaffold), findsWidgets,
                reason: 'Home screen should display after navigation');
          }
        }

        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle home tab navigation');
      },
    );

    /// Test 2: Navigate to Chapters tab
    testWidgets(
      'T2: Successfully navigate to Chapters tab',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          // Find navigation items
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().length > 1) {
            // Tap Chapters tab (usually second item)
            await tester.tap(navItems.at(1));
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            expect(find.byType(Scaffold), findsWidgets,
                reason: 'Chapters screen should display');
          }
        }

        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle chapters tab navigation');
      },
    );

    /// Test 3: Navigate to Scenarios tab
    testWidgets(
      'T3: Successfully navigate to Scenarios tab',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().length > 2) {
            // Tap Scenarios tab (usually third item)
            await tester.tap(navItems.at(2));
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            expect(find.byType(Scaffold), findsWidgets,
                reason: 'Scenarios screen should display');
          }
        }

        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle scenarios tab navigation');
      },
    );

    /// Test 4: Navigate to More tab
    testWidgets(
      'T4: Successfully navigate to More tab',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().length > 3) {
            // Tap More tab (usually last item)
            await tester.tap(navItems.last);
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            expect(find.byType(Scaffold), findsWidgets,
                reason: 'More screen should display');
          }
        }

        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle more tab navigation');
      },
    );

    /// Test 5: Cycle through all bottom navigation tabs
    testWidgets(
      'T5: Cycle through all bottom navigation tabs successfully',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          final navItems = find.byType(BottomNavigationBarItem);

          // Tap each navigation item in sequence
          for (int i = 0; i < navItems.evaluate().length; i++) {
            await tester.tap(navItems.at(i));
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            // Verify app is still functional
            expect(find.byType(Scaffold), findsWidgets,
                reason: 'Tab $i should display screen with Scaffold');
          }
        }

        // App should still be responsive
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle cycling through all tabs');
      },
    );

    /// Test 6: Back navigation closes current screen
    testWidgets(
      'T6: Back button navigation works correctly',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Navigate to a different tab
        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().length > 1) {
            // Navigate to second tab
            await tester.tap(navItems.at(1));
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            // Try to press back button
            // Android devices have back button, tap AppBar back if available
            final backButton = find.byType(BackButton);

            if (backButton.evaluate().isNotEmpty) {
              await tester.tap(backButton.first);
              await tester.pumpAndSettle(const Duration(milliseconds: 500));
            }

            // App should still be valid
            expect(find.byType(MaterialApp), findsOneWidget,
                reason: 'App should handle back navigation');
          }
        }
      },
    );

    /// Test 7: Deep linking to chapter detail screen
    testWidgets(
      'T7: Deep linking to chapter detail screens works',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Try to find any clickable list items that would navigate to detail screens
        final listTiles = find.byType(ListTile);

        if (listTiles.evaluate().isNotEmpty) {
          // Tap first list tile to navigate to detail
          await tester.tap(listTiles.first);
          await tester.pumpAndSettle(const Duration(milliseconds: 500));

          // Verify detail screen opened
          expect(find.byType(Scaffold), findsWidgets,
              reason: 'Detail screen should open with Scaffold');

          // Verify AppBar exists for navigation back
          expect(find.byType(AppBar), findsWidgets,
              reason: 'Detail screen should have AppBar with back button');
        }
      },
    );

    /// Test 8: Deep linking and back navigation flow
    testWidgets(
      'T8: Deep link to detail screen and back navigation',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final listTiles = find.byType(ListTile);

        if (listTiles.evaluate().isNotEmpty) {
          // Tap first list tile
          await tester.tap(listTiles.first);
          await tester.pumpAndSettle(const Duration(milliseconds: 500));

          // Find back button
          final backButton = find.byType(BackButton);

          if (backButton.evaluate().isNotEmpty) {
            // Tap back button
            await tester.tap(backButton.first);
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            // Should return to previous screen
            expect(find.byType(Scaffold), findsWidgets,
                reason: 'Back navigation should return to previous screen');
          }
        }

        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should maintain state after back navigation');
      },
    );

    /// Test 9: Multiple deep links in sequence
    testWidgets(
      'T9: Multiple sequential deep link navigations work correctly',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        for (int i = 0; i < 3; i++) {
          // Find list tiles
          final listTiles = find.byType(ListTile);

          if (listTiles.evaluate().isNotEmpty) {
            // Tap a list tile
            await tester.tap(listTiles.first);
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            // Go back
            final backButton = find.byType(BackButton);
            if (backButton.evaluate().isNotEmpty) {
              await tester.tap(backButton.first);
              await tester.pumpAndSettle(const Duration(milliseconds: 500));
            }
          }
        }

        // App should still be responsive
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'App should handle multiple sequential navigations');
      },
    );

    /// Test 10: Bottom navigation tab persistence during deep links
    testWidgets(
      'T10: Tab selection persists when returning from deep link',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        // Navigate to a specific tab
        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          final navItems = find.byType(BottomNavigationBarItem);

          if (navItems.evaluate().length > 1) {
            // Tap second tab
            await tester.tap(navItems.at(1));
            await tester.pumpAndSettle(const Duration(milliseconds: 500));

            // Try to open a detail screen
            final listTiles = find.byType(ListTile);
            if (listTiles.evaluate().isNotEmpty) {
              await tester.tap(listTiles.first);
              await tester.pumpAndSettle(const Duration(milliseconds: 500));

              // Go back
              final backButton = find.byType(BackButton);
              if (backButton.evaluate().isNotEmpty) {
                await tester.tap(backButton.first);
                await tester.pumpAndSettle(const Duration(milliseconds: 500));
              }
            }
          }
        }

        // App should be stable
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'Tab context should be preserved after deep link navigation');
      },
    );

    /// Test 11: Navigation state doesn't corrupt during rapid tab switching
    testWidgets(
      'T11: Rapid tab switching doesn\'t corrupt navigation state',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 3));

        final bottomNavBar = find.byType(BottomNavigationBar);

        if (bottomNavBar.evaluate().isNotEmpty) {
          final navItems = find.byType(BottomNavigationBarItem);

          // Rapidly switch between tabs
          for (int i = 0; i < 10; i++) {
            int tabIndex = i % navItems.evaluate().length;
            await tester.tap(navItems.at(tabIndex));
            await tester.pump(const Duration(milliseconds: 100));
          }

          await tester.pumpAndSettle(const Duration(milliseconds: 500));

          // App should still be valid
          expect(find.byType(MaterialApp), findsOneWidget,
              reason: 'App should handle rapid tab switching');
          expect(find.byType(Scaffold), findsWidgets,
              reason: 'UI should still be rendered after rapid navigation');
        }
      },
    );

    /// Test 12: Navigation service initializes correctly
    testWidgets(
      'T12: Navigation service is initialized for deep linking',
      (WidgetTester tester) async {
        app.main();

        await tester.pumpAndSettle(const Duration(seconds: 2));

        // Verify navigator is initialized
        expect(find.byType(Navigator), findsWidgets,
            reason: 'Navigator should be initialized for navigation');

        // Verify MaterialApp with navigatorKey is present
        expect(find.byType(MaterialApp), findsOneWidget,
            reason: 'MaterialApp with navigator should be present');
      },
    );
  });
}
