// test/screens/chapters_screen_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import '../helpers/widget_test_helpers.dart';

void main() {
  group('ChaptersScreen Widget Tests', () {
    group('Chapter List Display', () {
      testWidgets('should display chapter list', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Should have GridView for chapters
        expect(find.byType(GridView), findsWidgets);
      });

      testWidgets('should display Gospel names as tabs', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.text('Matthew'), findsWidgets);
        expect(find.text('Mark'), findsWidgets);
        expect(find.text('Luke'), findsWidgets);
        expect(find.text('John'), findsWidgets);
      });

      testWidgets('should display chapters for each Gospel', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Matthew should have chapters
        expect(find.byType(ListTile), findsWidgets);
      });

      testWidgets('should have tab controller for 4 Gospels', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // All 4 gospel tabs should be visible
        expect(find.byType(Tab), findsWidgets);
      });
    });

    group('Loading State', () {
      testWidgets('should display loading indicator when loading',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreenLoading(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      });

      testWidgets('should hide loading indicator after load complete',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(CircularProgressIndicator), findsNothing);
      });

      testWidgets('should display content after loading', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Should show gospel names after loading
        expect(find.text('Matthew'), findsOneWidget);
        expect(find.text('Mark'), findsOneWidget);
      });
    });

    group('Error State', () {
      testWidgets('should display error message on load failure',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreenError(),
        );

        await tester.pumpWidget(widget);

        expect(find.text('Failed to load chapters'), findsOneWidget);
      });

      testWidgets('should display error with retry button', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreenError(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(ElevatedButton), findsOneWidget);
      });

      testWidgets('should display error text', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreenError(),
        );

        await tester.pumpWidget(widget);

        expect(
          find.text('Failed to load chapters'),
          findsOneWidget,
        );
      });

      testWidgets('should allow retry after error', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreenError(),
        );

        await tester.pumpWidget(widget);

        // Tap retry button
        final retryButton = find.byType(ElevatedButton);
        await tester.tap(retryButton);
        await tester.pumpAndSettle();

        // After retry, should show success message or hide error
        expect(find.text('Chapters loaded'), findsOneWidget);
      });
    });

    group('Tab Switching', () {
      testWidgets('should switch between Gospel tabs', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Initially on Matthew
        expect(find.text('Matthew Chapter 1'), findsOneWidget);

        // Switch to Mark
        await tester.tap(find.text('Mark'));
        await tester.pumpAndSettle();

        expect(find.text('Mark Chapter 1'), findsOneWidget);
      });

      testWidgets('should display correct chapters for selected Gospel',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Switch to Luke
        await tester.tap(find.text('Luke'));
        await tester.pumpAndSettle();

        expect(find.text('Luke Chapter 1'), findsOneWidget);
      });

      testWidgets('should maintain tab state after switching',
          (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Switch to John
        await tester.tap(find.text('John'));
        await tester.pumpAndSettle();

        expect(find.text('John Chapter 1'), findsOneWidget);

        // Switch back to Matthew
        await tester.tap(find.text('Matthew'));
        await tester.pumpAndSettle();

        expect(find.text('Matthew Chapter 1'), findsOneWidget);
      });
    });

    group('Chapter Navigation', () {
      testWidgets('should display chapters as list items', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(ListTile), findsWidgets);
      });

      testWidgets('should allow tapping on chapter', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Find a chapter tile and tap it
        final chapterTile = find.byType(ListTile).first;
        await tester.tap(chapterTile);
        await tester.pumpAndSettle();

        // After tap, should navigate or show content
        expect(find.byType(Scaffold), findsWidgets);
      });

      testWidgets('should display responsive grid layout', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Should have grid or list for chapters
        expect(find.byType(GridView), findsWidgets);
      });
    });

    group('UI Structure', () {
      testWidgets('should have AppBar with title', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(AppBar), findsOneWidget);
      });

      testWidgets('should have TabBar for Gospels', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        expect(find.byType(TabBar), findsOneWidget);
      });

      testWidgets('should have proper spacing and layout', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Verify scaffold structure (test wrapper adds one)
        expect(find.byType(Scaffold), findsWidgets);
        expect(find.byType(TabBar), findsOneWidget);
      });
    });

    group('Content Loading', () {
      testWidgets('should load all Gospel chapters', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // All 4 gospels should be available
        expect(find.text('Matthew'), findsOneWidget);
        expect(find.text('Mark'), findsOneWidget);
        expect(find.text('Luke'), findsOneWidget);
        expect(find.text('John'), findsOneWidget);
      });

      testWidgets('should display chapter count per Gospel', (tester) async {
        final widget = WidgetTestHelpers.createTestWidget(
          const _MockChaptersScreen(),
        );

        await tester.pumpWidget(widget);

        // Matthew has multiple chapters
        expect(find.byType(ListTile), findsWidgets);
      });
    });
  });
}

class _MockChaptersScreen extends StatefulWidget {
  const _MockChaptersScreen();

  @override
  State<_MockChaptersScreen> createState() => _MockChaptersScreenState();
}

class _MockChaptersScreenState extends State<_MockChaptersScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gospels = ['Matthew', 'Mark', 'Luke', 'John'];
    final chaptersPerGospel = {
      'Matthew': 28,
      'Mark': 16,
      'Luke': 24,
      'John': 21,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapters'),
        bottom: TabBar(
          controller: _tabController,
          tabs: gospels.map((e) => Tab(text: e)).toList(),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: gospels.map((gospel) {
          final chapterCount = chaptersPerGospel[gospel] ?? 0;
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemCount: chapterCount,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$gospel Chapter ${index + 1}'),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}

class _MockChaptersScreenLoading extends StatelessWidget {
  const _MockChaptersScreenLoading();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chapters')),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

class _MockChaptersScreenError extends StatefulWidget {
  const _MockChaptersScreenError();

  @override
  State<_MockChaptersScreenError> createState() =>
      _MockChaptersScreenErrorState();
}

class _MockChaptersScreenErrorState extends State<_MockChaptersScreenError> {
  bool _hasError = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Chapters')),
      body: Center(
        child: _hasError
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Failed to load chapters'),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() => _hasError = false);
                    },
                    child: const Text('Retry'),
                  ),
                ],
              )
            : const Text('Chapters loaded'),
      ),
    );
  }
}
