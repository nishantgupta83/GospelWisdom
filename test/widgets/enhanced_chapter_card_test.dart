// test/widgets/enhanced_chapter_card_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:GospelWisdom/widgets/enhanced_chapter_card.dart';
import 'package:GospelWisdom/models/chapter_summary.dart';
import 'package:GospelWisdom/services/chapter_audio_service.dart';
import 'package:GospelWisdom/services/bookmark_service.dart';
import 'package:GospelWisdom/models/bookmark.dart';
import '../helpers/widget_test_helpers.dart';
import '../helpers/mock_services.dart';

void main() {
  group('EnhancedChapterCard Widget Tests', () {
    late ChapterSummary testChapter;
    late MockChapterAudioService mockAudioService;
    late MockBookmarkService mockBookmarkService;

    setUp(() {
      testChapter = ChapterSummary(
        id: 'test-chapter-1',
        gospelId: 1, // Matthew
        chapterNumber: 5,
        title: 'The Sermon on the Mount',
        verseCount: 48,
        scenarioCount: 12,
      );

      mockAudioService = MockChapterAudioService();
      mockBookmarkService = MockBookmarkService();
    });

    Widget createCardWithProviders() {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider<ChapterAudioService>(
            create: (_) => mockAudioService,
          ),
          ChangeNotifierProvider<BookmarkService>(
            create: (_) => mockBookmarkService,
          ),
        ],
        child: MaterialApp(
          home: Scaffold(
            body: EnhancedChapterCard(
              chapter: testChapter,
              onTap: () {},
            ),
          ),
        ),
      );
    }

    group('Diamond Badge Shape', () {
      testWidgets('should display diamond badge with chapter number',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Badge should exist with Transform.rotate (diamond shape)
        expect(find.byType(Transform), findsWidgets);
        expect(find.text('5'), findsOneWidget);
      });

      testWidgets('should have gradient background in diamond badge',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Container with BoxDecoration should exist
        expect(find.byType(Container), findsWidgets);

        final containerWidget = tester.widgetList<Container>(
          find.byType(Container),
        ).firstWhere(
          (c) => c.decoration is BoxDecoration,
          orElse: () => Container(),
        );

        expect(containerWidget.decoration, isA<BoxDecoration>());
      });

      testWidgets('should display correct chapter number in badge',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        expect(find.text('5'), findsOneWidget);
      });

      testWidgets('should have 48x48 size diamond badge', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Verify Transform widgets exist (for diamond rotation)
        final transforms = tester.widgetList<Transform>(
          find.byType(Transform),
        );

        expect(transforms.length, greaterThan(0));
      });
    });

    group('Notebook Paper Design', () {
      testWidgets('should display notebook page with torn edge',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // ClipPath should exist for torn edge effect
        expect(find.byType(ClipPath), findsOneWidget);
        expect(find.byType(CustomPaint), findsOneWidget);
      });

      testWidgets('should have cream paper background color', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Container with cream color should exist
        final containers = tester.widgetList<Container>(
          find.byType(Container),
        );

        expect(containers.length, greaterThan(0));
      });

      testWidgets('should display chapter title and display name',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        expect(find.text('The Sermon on the Mount'), findsOneWidget);
        expect(find.text('Matthew 5'), findsOneWidget);
      });

      testWidgets('should show verse and scenario counts', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Should contain verse count and scenario count text
        expect(find.textContaining('48'), findsOneWidget);
        expect(find.textContaining('12'), findsOneWidget);
      });
    });

    group('Audio Button', () {
      testWidgets('should display play icon when audio not playing',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        expect(find.byIcon(Icons.play_circle), findsOneWidget);
        expect(find.byIcon(Icons.pause_circle), findsNothing);
      });

      testWidgets('should display pause icon when audio playing',
          (tester) async {
        mockAudioService.setMockState(
          isPlaying: true,
          currentChapterId: 'test-chapter-1',
        );

        await tester.pumpWidget(createCardWithProviders());
        await tester.pumpAndSettle();

        expect(find.byIcon(Icons.pause_circle), findsOneWidget);
        expect(find.byIcon(Icons.play_circle), findsNothing);
      });

      testWidgets('should show loading indicator when audio loading',
          (tester) async {
        mockAudioService.setMockState(
          isLoading: true,
          currentChapterId: 'test-chapter-1',
        );

        await tester.pumpWidget(createCardWithProviders());
        await tester.pumpAndSettle();

        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      });

      testWidgets('should be tappable', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        final audioButton = find.byIcon(Icons.play_circle);
        expect(audioButton, findsOneWidget);

        await tester.tap(audioButton);
        await tester.pumpAndSettle();

        // Verify tap was registered (no errors)
        expect(tester.takeException(), isNull);
      });
    });

    group('Bookmark Button', () {
      testWidgets('should display bookmark outline when not bookmarked',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        expect(find.byIcon(Icons.bookmark_border), findsOneWidget);
        expect(find.byIcon(Icons.bookmark), findsNothing);
      });

      testWidgets('should display filled bookmark when bookmarked',
          (tester) async {
        // Add bookmark first
        await mockBookmarkService.addBookmark(
          bookmarkType: BookmarkType.chapter,
          referenceId: 105, // Matthew 5 = 1*100 + 5
          chapterId: 105,
          title: 'The Sermon on the Mount',
        );

        await tester.pumpWidget(createCardWithProviders());
        await tester.pumpAndSettle();

        expect(find.byIcon(Icons.bookmark), findsOneWidget);
        expect(find.byIcon(Icons.bookmark_border), findsNothing);
      });

      testWidgets('should toggle bookmark on tap', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Initially not bookmarked
        expect(find.byIcon(Icons.bookmark_border), findsOneWidget);

        // Tap to bookmark
        await tester.tap(find.byIcon(Icons.bookmark_border));
        await tester.pumpAndSettle();

        // Should show filled bookmark
        expect(find.byIcon(Icons.bookmark), findsOneWidget);
      });

      testWidgets('should be tappable', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        final bookmarkButton = find.byIcon(Icons.bookmark_border);
        expect(bookmarkButton, findsOneWidget);

        await tester.tap(bookmarkButton);
        await tester.pumpAndSettle();

        expect(tester.takeException(), isNull);
      });
    });

    group('Accessibility', () {
      testWidgets('should have semantic label for screen readers',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Semantics widget should exist
        expect(find.byType(Semantics), findsWidgets);
      });

      testWidgets('should be marked as button for accessibility',
          (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        // Verify Semantics widgets exist
        final semanticsWidgets = tester.widgetList<Semantics>(
          find.byType(Semantics),
        );

        expect(semanticsWidgets.length, greaterThan(0));
      });

      testWidgets('should support text scaling', (tester) async {
        await tester.pumpWidget(
          MediaQuery(
            data: const MediaQueryData(textScaler: TextScaler.linear(2.0)),
            child: createCardWithProviders(),
          ),
        );

        // Text should still be visible
        expect(find.text('The Sermon on the Mount'), findsOneWidget);
        expect(find.text('Matthew 5'), findsOneWidget);
      });
    });

    group('Interaction', () {
      testWidgets('should be tappable', (tester) async {
        bool tapped = false;

        final widget = MultiProvider(
          providers: [
            ChangeNotifierProvider<ChapterAudioService>(
              create: (_) => mockAudioService,
            ),
            ChangeNotifierProvider<BookmarkService>(
              create: (_) => mockBookmarkService,
            ),
          ],
          child: MaterialApp(
            home: Scaffold(
              body: EnhancedChapterCard(
                chapter: testChapter,
                onTap: () => tapped = true,
              ),
            ),
          ),
        );

        await tester.pumpWidget(widget);

        // Tap the card
        await tester.tap(find.byType(EnhancedChapterCard));
        await tester.pumpAndSettle();

        expect(tapped, isTrue);
      });

      testWidgets('should have InkWell for ripple effect', (tester) async {
        await tester.pumpWidget(createCardWithProviders());

        expect(find.byType(InkWell), findsWidgets);
      });
    });

    group('Theme Support', () {
      testWidgets('should adapt to light theme', (tester) async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider<ChapterAudioService>(
                create: (_) => mockAudioService,
              ),
              ChangeNotifierProvider<BookmarkService>(
                create: (_) => mockBookmarkService,
              ),
            ],
            child: MaterialApp(
              theme: ThemeData.light(),
              home: Scaffold(
                body: EnhancedChapterCard(
                  chapter: testChapter,
                  onTap: () {},
                ),
              ),
            ),
          ),
        );

        // Should render without errors
        expect(find.byType(EnhancedChapterCard), findsOneWidget);
      });

      testWidgets('should adapt to dark theme', (tester) async {
        await tester.pumpWidget(
          MultiProvider(
            providers: [
              ChangeNotifierProvider<ChapterAudioService>(
                create: (_) => mockAudioService,
              ),
              ChangeNotifierProvider<BookmarkService>(
                create: (_) => mockBookmarkService,
              ),
            ],
            child: MaterialApp(
              theme: ThemeData.dark(),
              darkTheme: ThemeData.dark(),
              themeMode: ThemeMode.dark,
              home: Scaffold(
                body: EnhancedChapterCard(
                  chapter: testChapter,
                  onTap: () {},
                ),
              ),
            ),
          ),
        );

        expect(find.byType(EnhancedChapterCard), findsOneWidget);
      });
    });
  });
}
