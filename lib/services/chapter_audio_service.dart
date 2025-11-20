// lib/services/chapter_audio_service.dart

import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'background_music_service.dart';

/// Service for managing Gospel chapter audio narration
/// Features:
/// - Background playback support
/// - Speed control (0.75x - 2x)
/// - Auto-advance to next chapter
/// - Resume from last position
/// - Integration with background music (ducking)
class ChapterAudioService extends ChangeNotifier {
  final AudioPlayer _player = AudioPlayer();
  final BackgroundMusicService _musicService = BackgroundMusicService.instance;

  // Player state
  bool _isPlaying = false;
  bool _isLoading = false;
  String? _currentChapterId;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;
  double _playbackSpeed = 1.0;
  bool _autoAdvanceEnabled = true;

  // Getters
  bool get isPlaying => _isPlaying;
  bool get isLoading => _isLoading;
  String? get currentChapterId => _currentChapterId;
  Duration get position => _position;
  Duration get duration => _duration;
  double get playbackSpeed => _playbackSpeed;
  bool get autoAdvanceEnabled => _autoAdvanceEnabled;

  ChapterAudioService() {
    _setupListeners();
  }

  void _setupListeners() {
    // Listen to player state changes
    _player.playerStateStream.listen((state) {
      _isPlaying = state.playing;
      _isLoading = state.processingState == ProcessingState.loading ||
          state.processingState == ProcessingState.buffering;

      // Auto-advance on completion
      if (state.processingState == ProcessingState.completed &&
          _autoAdvanceEnabled) {
        _advanceToNextChapter();
      }

      notifyListeners();
    });

    // Listen to position changes
    _player.positionStream.listen((position) {
      _position = position;
      notifyListeners();
    });

    // Listen to duration changes
    _player.durationStream.listen((duration) {
      _duration = duration ?? Duration.zero;
      notifyListeners();
    });
  }

  /// Play audio for a specific chapter
  Future<void> playChapter(String chapterId) async {
    try {
      _currentChapterId = chapterId;
      _isLoading = true;
      notifyListeners();

      // Duck background music
      await _musicService.duck();

      // Get audio URL (placeholder - will integrate with Supabase Storage)
      final audioUrl = await _getChapterAudioUrl(chapterId);

      // Load and play
      await _player.setAudioSource(AudioSource.uri(Uri.parse(audioUrl)));
      await _player.setSpeed(_playbackSpeed);
      await _player.play();
    } catch (e) {
      debugPrint('Error playing chapter audio: $e');
      _isLoading = false;
      await _musicService.unduck();
      notifyListeners();
    }
  }

  /// Pause current playback
  Future<void> pause() async {
    await _player.pause();
    await _musicService.unduck(); // Restore background music
  }

  /// Resume playback
  Future<void> resume() async {
    await _musicService.duck();
    await _player.play();
  }

  /// Seek to specific position
  Future<void> seek(Duration position) async {
    await _player.seek(position);
  }

  /// Set playback speed (0.75x - 2.0x)
  Future<void> setSpeed(double speed) async {
    if (speed < 0.5 || speed > 2.0) {
      debugPrint('Invalid playback speed: $speed. Must be between 0.5 and 2.0');
      return;
    }
    _playbackSpeed = speed;
    await _player.setSpeed(speed);
    notifyListeners();
  }

  /// Toggle auto-advance feature
  void setAutoAdvance(bool enabled) {
    _autoAdvanceEnabled = enabled;
    notifyListeners();
  }

  /// Skip forward 30 seconds
  Future<void> skipForward() async {
    final newPosition = _position + const Duration(seconds: 30);
    await seek(newPosition < _duration ? newPosition : _duration);
  }

  /// Skip backward 30 seconds
  Future<void> skipBackward() async {
    final newPosition = _position - const Duration(seconds: 30);
    await seek(newPosition > Duration.zero ? newPosition : Duration.zero);
  }

  /// Stop playback and clear current chapter
  Future<void> stop() async {
    await _player.stop();
    await _musicService.unduck();
    _currentChapterId = null;
    _position = Duration.zero;
    _duration = Duration.zero;
    notifyListeners();
  }

  /// Advance to next chapter (called automatically if auto-advance is enabled)
  Future<void> _advanceToNextChapter() async {
    if (_currentChapterId == null) return;

    // TODO: Implement logic to get next chapter in sequence
    // For now, just stop playback
    debugPrint('Auto-advance: Next chapter not yet implemented');
    await stop();
  }

  /// Get audio URL for chapter (placeholder)
  /// TODO: Integrate with Supabase Storage
  Future<String> _getChapterAudioUrl(String chapterId) async {
    // Placeholder: Return empty URL
    // In production, fetch from Supabase Storage bucket
    // Example: https://your-project.supabase.co/storage/v1/object/public/gospel-audio/matthew-1.mp3
    throw UnimplementedError(
      'Audio narration not yet available. Please add audio files to Supabase Storage.',
    );
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}
