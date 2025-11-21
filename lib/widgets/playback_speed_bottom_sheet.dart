// lib/widgets/playback_speed_bottom_sheet.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/chapter_audio_service.dart';
import '../services/haptic_feedback_service.dart';
import '../l10n/app_localizations.dart';

/// Playback speed control bottom sheet
/// Follows UX patterns from Bible apps (0.5x - 2x range)
class PlaybackSpeedBottomSheet extends StatelessWidget {
  const PlaybackSpeedBottomSheet({super.key});

  static Future<void> show(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => const PlaybackSpeedBottomSheet(),
    );
  }

  // Standard playback speeds (as per ACCESSIBILITY_RESEARCH.md)
  static const List<double> speeds = [0.5, 0.75, 1.0, 1.25, 1.5, 2.0];

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
                  Icons.speed,
                  size: 28,
                  color: theme.colorScheme.primary,
                ),
                const SizedBox(width: 12),
                Text(
                  l10n.playbackSpeed,
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

            // Current speed indicator
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.only(bottom: 16),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondaryContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle,
                    color: theme.colorScheme.secondary,
                    size: 20,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    '${l10n.currentSpeed}: ${_formatSpeed(audioService.playbackSpeed)}',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onSecondaryContainer,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),

            // Speed options grid
            Wrap(
              spacing: 12,
              runSpacing: 12,
              children: speeds.map((speed) {
                final isSelected = (audioService.playbackSpeed - speed).abs() < 0.01;
                return _buildSpeedButton(
                  context,
                  speed: speed,
                  isSelected: isSelected,
                );
              }).toList(),
            ),

            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  Widget _buildSpeedButton(
    BuildContext context, {
    required double speed,
    required bool isSelected,
  }) {
    final theme = Theme.of(context);
    final audioService = context.read<ChapterAudioService>();

    return SizedBox(
      width: (MediaQuery.of(context).size.width - 76) / 3, // 3 columns
      child: isSelected
          ? FilledButton(
              onPressed: null, // Already selected
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.check, size: 18),
                  const SizedBox(width: 4),
                  Text(
                    _formatSpeed(speed),
                    style: theme.textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            )
          : OutlinedButton(
              onPressed: () {
                HapticFeedbackService.selection();
                audioService.setSpeed(speed);
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
              child: Text(
                _formatSpeed(speed),
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
    );
  }

  String _formatSpeed(double speed) {
    if (speed == 1.0) return '1×'; // Normal speed
    return '${speed}×';
  }
}
