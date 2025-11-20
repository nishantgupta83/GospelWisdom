// lib/screens/chapters_screen.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/chapter_summary.dart';
import '../services/service_locator.dart';
import 'chapters_detail_view.dart';
import '../l10n/app_localizations.dart';
import '../core/navigation/navigation_service.dart';
import '../widgets/app_background.dart';
import '../widgets/enhanced_chapter_card.dart';

/// CHAPTERS SCREEN: Tabbed Gospel navigation with grid layout
/// Features:
/// - 4 Gospel tabs (Matthew, Mark, Luke, John)
/// - Responsive grid (2 columns mobile, 3 columns tablet)
/// - Enhanced chapter cards with audio and bookmarks
/// - Apple HIG accessibility compliance
class ChapterScreen extends StatefulWidget {
  const ChapterScreen({super.key});

  @override
  State<ChapterScreen> createState() => _ChapterScreenState();
}

class _ChapterScreenState extends State<ChapterScreen>
    with SingleTickerProviderStateMixin {
  final _service = ServiceLocator.instance.enhancedSupabaseService;
  List<ChapterSummary> _allChapters = [];
  bool _isLoading = true;
  String? _errorMessage;

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _loadChapters();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  Future<void> _loadChapters() async {
    if (!mounted) return;

    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final data = await _service.fetchChapterSummaries();
      if (mounted) {
        setState(() {
          _allChapters = data;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() => _errorMessage = 'Failed to load chapters: $e');
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  /// Filter chapters by gospel ID and sort by chapter number
  List<ChapterSummary> _getChaptersForGospel(int gospelId) {
    final chapters = _allChapters.where((c) => c.gospelId == gospelId).toList();
    chapters.sort((a, b) => a.chapterNumber.compareTo(b.chapterNumber));
    return chapters;
  }

  /// Fade-transition helper
  void _fadePush(Widget page) {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => page,
        transitionsBuilder: (_, anim, __, child) =>
            FadeTransition(opacity: anim, child: child),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final l10n = AppLocalizations.of(context)!;
    final textScaler = MediaQuery.textScalerOf(context);

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Unified gradient background
          AppBackground(isDark: isDark),

          // Main content
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),

                // Header card
                _buildHeader(theme, l10n, textScaler),

                // Tab bar
                _buildTabBar(theme, l10n),

                // Tab views with grids
                Expanded(
                  child: _buildContent(theme, l10n),
                ),
              ],
            ),
          ),

          // Floating Back Button
          Positioned(
            top: 26,
            right: 84,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: theme.colorScheme.surface,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  size: 32,
                  color: theme.colorScheme.primary,
                ),
                splashRadius: 32,
                onPressed: () {
                  if (Navigator.canPop(context)) {
                    Navigator.pop(context);
                  } else {
                    NavigationService.instance.goToTab(0);
                  }
                },
                tooltip: l10n.back,
              ),
            ),
          ),

          // Floating Home Button
          Positioned(
            top: 26,
            right: 24,
            child: CircleAvatar(
              radius: 26,
              backgroundColor: theme.colorScheme.surface,
              child: IconButton(
                icon: Icon(
                  Icons.home_filled,
                  size: 32,
                  color: theme.colorScheme.primary,
                ),
                splashRadius: 32,
                onPressed: () {
                  NavigationService.instance.goToTab(0);
                },
                tooltip: l10n.home,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader(
    ThemeData theme,
    AppLocalizations l10n,
    TextScaler textScaler,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withOpacity(0.85),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            l10n.gospelBooks,
            style: GoogleFonts.poiretOne(
              fontSize: textScaler.scale(30),
              fontWeight: FontWeight.w800,
              color: theme.colorScheme.onSurface,
              letterSpacing: 1.3,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 12),
          Container(
            width: 80,
            height: 3,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  theme.colorScheme.primary,
                  theme.colorScheme.primary.withOpacity(0.6),
                ],
              ),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.exploreScripture,
            style: GoogleFonts.poppins(
              fontSize: textScaler.scale(14),
              color: theme.colorScheme.onSurface.withOpacity(0.7),
              letterSpacing: 0.8,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildTabBar(ThemeData theme, AppLocalizations l10n) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHighest.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: TabBar(
        controller: _tabController,
        tabs: [
          Tab(text: l10n.matthew),
          Tab(text: l10n.mark),
          Tab(text: l10n.luke),
          Tab(text: l10n.john),
        ],
        indicator: BoxDecoration(
          color: theme.colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        indicatorSize: TabBarIndicatorSize.tab,
        labelColor: theme.colorScheme.onPrimary,
        unselectedLabelColor: theme.colorScheme.onSurface.withOpacity(0.6),
        labelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        unselectedLabelStyle: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          fontSize: 14,
        ),
        splashBorderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget _buildContent(ThemeData theme, AppLocalizations l10n) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _errorMessage!,
              style: GoogleFonts.poppins(color: theme.colorScheme.error),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _loadChapters,
              child: Text(l10n.retry),
            ),
          ],
        ),
      );
    }

    if (_allChapters.isEmpty) {
      return Center(
        child: Text(
          l10n.noChaptersAvailable,
          style: GoogleFonts.poppins(color: theme.colorScheme.onSurface),
        ),
      );
    }

    return TabBarView(
      controller: _tabController,
      children: [
        _buildChapterGrid(_getChaptersForGospel(1)), // Matthew
        _buildChapterGrid(_getChaptersForGospel(2)), // Mark
        _buildChapterGrid(_getChaptersForGospel(3)), // Luke
        _buildChapterGrid(_getChaptersForGospel(4)), // John
      ],
    );
  }

  Widget _buildChapterGrid(List<ChapterSummary> chapters) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = screenWidth > 600 ? 3 : 2;

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75, // Card height > width
      ),
      itemCount: chapters.length,
      itemBuilder: (context, index) {
        final chapter = chapters[index];
        return EnhancedChapterCard(
          chapter: chapter,
          onTap: () => _fadePush(ChapterDetailView(chapterId: chapter.id)),
          // theme: null, // TODO: Fetch from full Chapter model if needed
        );
      },
    );
  }
}
