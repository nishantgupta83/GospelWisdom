// lib/widgets/enhanced_chapter_card.dart

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import '../models/chapter_summary.dart';
import '../services/chapter_audio_service.dart';
import '../services/bookmark_service.dart';
import '../models/bookmark.dart';
import '../l10n/app_localizations.dart';

/// Enhanced chapter card with squircle design, audio controls, and bookmarks
/// Follows Apple HIG accessibility guidelines
class EnhancedChapterCard extends StatelessWidget {
  final ChapterSummary chapter;
  final VoidCallback onTap;
  final String? theme; // Optional theme text from full Chapter model

  const EnhancedChapterCard({
    super.key,
    required this.chapter,
    required this.onTap,
    this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final textScaler = MediaQuery.textScalerOf(context);

    return Semantics(
      label: _buildAccessibilityLabel(l10n),
      button: true,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            HapticFeedback.lightImpact();
            onTap();
          },
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24), // Squircle effect
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  theme.colorScheme.surface,
                  theme.colorScheme.surfaceContainerHighest,
                ],
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: theme.colorScheme.primary.withOpacity(0.12),
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Chapter badge
                _buildChapterBadge(theme),
                const SizedBox(height: 12),

                // Title
                Text(
                  chapter.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textScaler: textScaler,
                ),

                const SizedBox(height: 4),

                // Gospel reference
                Text(
                  chapter.displayName,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                  textScaler: textScaler,
                ),

                const SizedBox(height: 8),

                // Theme preview (if available)
                if (this.theme != null && this.theme!.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      '${l10n.chapterTheme}: ${this.theme}',
                      style: theme.textTheme.bodySmall?.copyWith(
                        fontStyle: FontStyle.italic,
                        color: theme.colorScheme.onSurface.withOpacity(0.7),
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textScaler: textScaler,
                    ),
                  ),

                const Spacer(),

                // Stats row
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    _buildStatChip(
                      '${chapter.verseCount} ${l10n.versesCount}',
                      Icons.menu_book_outlined,
                      theme,
                    ),
                    _buildStatChip(
                      '${chapter.scenarioCount} ${l10n.scenariosCount}',
                      Icons.lightbulb_outline,
                      theme,
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                // Action buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildAudioButton(context, l10n),
                    _buildBookmarkButton(context, l10n),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _buildAccessibilityLabel(AppLocalizations l10n) {
    return '${chapter.displayName}, ${chapter.title}. '
        '${chapter.verseCount} ${l10n.versesCount}, '
        '${chapter.scenarioCount} ${l10n.scenariosCount}'
        '${theme != null && theme!.isNotEmpty ? '. ${l10n.chapterTheme}: $theme' : ''}';
  }

  Widget _buildChapterBadge(ThemeData theme) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.primaryContainer,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: Text(
          '${chapter.chapterNumber}',
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildStatChip(String label, IconData icon, ThemeData theme) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceContainerHigh,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 14,
            color: theme.colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            label,
            style: theme.textTheme.bodySmall?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAudioButton(BuildContext context, AppLocalizations l10n) {
    return Consumer<ChapterAudioService>(
      builder: (context, audioService, _) {
        final isCurrentChapter = audioService.currentChapterId == chapter.id;
        final isPlaying = isCurrentChapter && audioService.isPlaying;
        final isLoading = isCurrentChapter && audioService.isLoading;

        return Semantics(
          button: true,
          label: isPlaying ? l10n.pauseAudio : l10n.playAudio,
          child: Material(
            color: Colors.transparent,
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () {
                HapticFeedback.mediumImpact();
                if (isPlaying) {
                  audioService.pause();
                } else {
                  // Will show UnimplementedError until audio URLs are configured
                  try {
                    audioService.playChapter(chapter.id);
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Audio not yet available for this chapter'),
                        duration: const Duration(seconds: 2),
                      ),
                    );
                  }
                }
              },
              child: Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                child: isLoading
                    ? SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation(
                            Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      )
                    : Icon(
                        isPlaying ? Icons.pause_circle : Icons.play_circle,
                        size: 32,
                        color: Theme.of(context).colorScheme.primary,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBookmarkButton(BuildContext context, AppLocalizations l10n) {
    return Consumer<BookmarkService>(
      builder: (context, bookmarkService, _) {
        // Use gospelId * 100 + chapterNumber as unique int referenceId
        // Example: Matthew 5 = 1*100 + 5 = 105, John 3 = 4*100 + 3 = 403
        final referenceId = chapter.gospelId * 100 + chapter.chapterNumber;
        final isFavorited = bookmarkService.isBookmarked(
          BookmarkType.chapter,
          referenceId,
        );

        return Semantics(
          button: true,
          label: isFavorited ? l10n.removeBookmark : l10n.bookmarkChapter,
          child: Material(
            color: Colors.transparent,
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            child: InkWell(
              onTap: () async {
                HapticFeedback.mediumImpact();
                if (isFavorited) {
                  // Get the bookmark to delete it
                  final bookmark = bookmarkService.getBookmark(
                    BookmarkType.chapter,
                    referenceId,
                  );
                  if (bookmark != null) {
                    await bookmarkService.removeBookmark(bookmark.id);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Bookmark removed'),
                        duration: const Duration(seconds: 1),
                      ),
                    );
                  }
                } else {
                  await bookmarkService.addBookmark(
                    bookmarkType: BookmarkType.chapter,
                    referenceId: referenceId,
                    chapterId: referenceId, // Use same value for chapterId
                    title: chapter.title,
                    contentPreview: chapter.displayName,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${chapter.displayName} bookmarked'),
                      duration: const Duration(seconds: 1),
                    ),
                  );
                }
              },
              child: Container(
                width: 48,
                height: 48,
                alignment: Alignment.center,
                child: Icon(
                  isFavorited ? Icons.bookmark : Icons.bookmark_border,
                  size: 28,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
