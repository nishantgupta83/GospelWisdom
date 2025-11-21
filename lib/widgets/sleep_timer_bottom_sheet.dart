// lib/widgets/sleep_timer_bottom_sheet.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/chapter_audio_service.dart';
import '../services/haptic_feedback_service.dart';
import '../l10n/app_localizations.dart';

/// Sleep timer bottom sheet with preset duration buttons
/// Follows UX patterns from YouVersion Bible and Dwell Audio Bible
class SleepTimerBottomSheet extends StatelessWidget {
  const SleepTimerBottomSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const SleepTimerBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final audioService = context.watch<ChapterAudioService>();

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Row(
              children: [
                Icon(
                  Icons.bedtime_outlined,
                  size: 28,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  l10n.sleepTimer,
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    HapticFeedbackService.light();
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Active timer indicator
            if (audioService.hasSleepTimer)
              Container(
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.timer,
                      color: theme.colorScheme.primary,
                      size: 20,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _formatRemainingTime(audioService.sleepTimerRemaining),
                      style: theme.textTheme.bodyMedium?.copyWith(
                        color: theme.colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                      onPressed: () {
                        HapticFeedbackService.medium();
                        audioService.cancelSleepTimer();
                        Navigator.of(context).pop();
                      },
                      child: Text(l10n.cancel),
                    ),
                  ],
                ),
              ),

            // Preset duration buttons
            Text(
              l10n.selectDuration,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ),

            const SizedBox(height: 16),

            // Duration grid
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                _buildDurationButton(
                  context,
                  duration: const Duration(minutes: 5),
                  label: '5 ${l10n.minutes}',
                ),
                _buildDurationButton(
                  context,
                  duration: const Duration(minutes: 10),
                  label: '10 ${l10n.minutes}',
                ),
                _buildDurationButton(
                  context,
                  duration: const Duration(minutes: 15),
                  label: '15 ${l10n.minutes}',
                ),
                _buildDurationButton(
                  context,
                  duration: const Duration(minutes: 30),
                  label: '30 ${l10n.minutes}',
                ),
                _buildDurationButton(
                  context,
                  duration: const Duration(minutes: 60),
                  label: '60 ${l10n.minutes}',
                ),
                _buildDurationButton(
                  context,
                  duration: const Duration(minutes: 1),
                  label: l10n.endOfChapter,
                  endOfChapter: true,
                ),
              ],
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildDurationButton(
    BuildContext context, {
    required Duration duration,
    required String label,
    bool endOfChapter = false,
  }) {
    final theme = Theme.of(context);
    final audioService = context.read<ChapterAudioService>();

    return SizedBox(
      width: (MediaQuery.of(context).size.width - 64) / 2, // 2 columns
      child: OutlinedButton(
        onPressed: () {
          HapticFeedbackService.medium();
          audioService.setSleepTimer(duration, endOfChapter: endOfChapter);
          Navigator.of(context).pop();

          // Show confirmation snackbar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                endOfChapter
                    ? AppLocalizations.of(context)!.sleepTimerSetToEndOfChapter
                    : AppLocalizations.of(context)!.sleepTimerSet(label),
              ),
              duration: const Duration(seconds: 2),
              behavior: SnackBarBehavior.floating,
            ),
          );
        },
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          side: BorderSide(
            color: theme.colorScheme.outline,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              endOfChapter ? Icons.skip_next : Icons.access_time,
              size: 20,
            ),
            const SizedBox(width: 8),
            Text(
              label,
              style: theme.textTheme.bodyLarge?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatRemainingTime(Duration? remaining) {
    if (remaining == null) return '';

    final minutes = remaining.inMinutes;
    final seconds = remaining.inSeconds % 60;

    if (minutes > 0) {
      return '$minutes:${seconds.toString().padLeft(2, '0')} remaining';
    } else {
      return '$seconds seconds remaining';
    }
  }
}
