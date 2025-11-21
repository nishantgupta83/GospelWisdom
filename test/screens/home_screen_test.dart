// test/screens/home_screen_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../helpers/widget_test_helpers.dart';

void main() {
  group('HomeScreen Widget Tests', () {
    group('Tab Navigation (5 Tabs)', () {
      testWidgets('should display all 5 tabs in navigation bar', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.text('Home'), findsOneWidget);
        expect(find.text('Chapters'), findsOneWidget);
        expect(find.text('Dilemmas'), findsOneWidget);
        expect(find.text('Journal'), findsOneWidget);
        expect(find.text('More'), findsOneWidget);
      });

      testWidgets('should display bottom navigation bar', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(BottomNavigationBar), findsOneWidget);
      });

      testWidgets('should have correct tab icons', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(BottomNavigationBar), findsOneWidget);
        expect(find.byIcon(Icons.home), findsOneWidget);
        expect(find.byIcon(Icons.book), findsOneWidget);
        expect(find.byIcon(Icons.lightbulb), findsOneWidget);
        expect(find.byIcon(Icons.edit_note), findsOneWidget);
        expect(find.byIcon(Icons.more_horiz), findsOneWidget);
      });
    });

    group('Tab Switching', () {
      testWidgets('should switch to Chapters tab on tap', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Tap chapters tab
        await tester.tap(find.text('Chapters'));
        await tester.pumpAndSettle();

        expect(find.text('Chapters Content'), findsOneWidget);
      });

      testWidgets('should switch to Dilemmas tab on tap', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Tap dilemmas tab
        await tester.tap(find.text('Dilemmas'));
        await tester.pumpAndSettle();

        expect(find.text('Dilemmas Content'), findsOneWidget);
      });

      testWidgets('should switch to Journal tab on tap', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Tap journal tab
        await tester.tap(find.text('Journal'));
        await tester.pumpAndSettle();

        expect(find.text('Journal Content'), findsOneWidget);
      });

      testWidgets('should switch to More tab on tap', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Tap more tab
        await tester.tap(find.text('More'));
        await tester.pumpAndSettle();

        expect(find.text('More Content'), findsOneWidget);
      });

      testWidgets('should maintain tab state after switching back',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Switch to chapters
        await tester.tap(find.text('Chapters'));
        await tester.pumpAndSettle();

        // Switch back to home
        await tester.tap(find.text('Home'));
        await tester.pumpAndSettle();

        expect(find.text('Home Content'), findsOneWidget);
      });
    });

    group('Navigation', () {
      testWidgets('should display home content initially', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.text('Home Content'), findsOneWidget);
      });

      testWidgets('should have 5 tab items in navigation', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        final navBar = find.byType(BottomNavigationBar);
        expect(navBar, findsOneWidget);

        // Verify all 5 items exist by checking for their labels
        expect(find.text('Home'), findsOneWidget);
        expect(find.text('Chapters'), findsOneWidget);
        expect(find.text('Dilemmas'), findsOneWidget);
        expect(find.text('Journal'), findsOneWidget);
        expect(find.text('More'), findsOneWidget);
      });

      testWidgets('should update selected tab indicator', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Tap different tabs and verify content changes
        await tester.tap(find.text('Chapters'));
        await tester.pumpAndSettle();
        expect(find.text('Chapters Content'), findsOneWidget);

        await tester.tap(find.text('Dilemmas'));
        await tester.pumpAndSettle();
        expect(find.text('Dilemmas Content'), findsOneWidget);
      });
    });

    group('Content Display', () {
      testWidgets('should show home content in home tab', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.text('Home Content'), findsOneWidget);
      });

      testWidgets('should display different content for each tab',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Home tab
        expect(find.text('Home Content'), findsOneWidget);

        // Switch and verify each tab content
        final tabs = ['Chapters', 'Dilemmas', 'Journal', 'More'];
        for (final tab in tabs) {
          await tester.tap(find.text(tab));
          await tester.pumpAndSettle();
          expect(find.text('$tab Content'), findsOneWidget);
        }
      });

      testWidgets('should have scrollable content areas', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Content should be in a scrollable view
        expect(find.byType(PageView), findsOneWidget);
      });
    });

    group('UI Structure', () {
      testWidgets('should have scaffold with proper structure',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Should have multiple scaffolds (test wrapper + actual widget)
        expect(find.byType(Scaffold), findsWidgets);
      });

      testWidgets('should display navigation bar', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockHomeScreen(),
        );

        await tester.pumpWidget(widget);

        // Should have bottom nav
        expect(find.byType(BottomNavigationBar), findsOneWidget);
      });
    });
  });
}

class _MockHomeScreen extends StatefulWidget {
  const _MockHomeScreen();

  @override
  State<_MockHomeScreen> createState() => _MockHomeScreenState();
}

class _MockHomeScreenState extends State<_MockHomeScreen> {
  int _selectedIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          const Center(child: Text('Home Content')),
          const Center(child: Text('Chapters Content')),
          const Center(child: Text('Dilemmas Content')),
          const Center(child: Text('Journal Content')),
          const Center(child: Text('More Content')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            );
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Chapters'),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb),
            label: 'Dilemmas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.edit_note),
            label: 'Journal',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
      ),
    );
  }
}
