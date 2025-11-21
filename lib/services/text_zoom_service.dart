// lib/services/text_zoom_service.dart

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Service for managing text zoom level in verse reading views
/// Implements pinch-to-zoom with persistence (1x - 3x range per ACCESSIBILITY_RESEARCH.md)
class TextZoomService extends ChangeNotifier {
  static const String _zoomLevelKey = 'text_zoom_level';
  static const double minZoom = 1.0;
  static const double maxZoom = 3.0;
  static const double defaultZoom = 1.0;

  double _zoomLevel = defaultZoom;
  bool _isInitialized = false;

  /// Current zoom level (1.0 - 3.0)
  double get zoomLevel => _zoomLevel;

  /// Whether service has loaded from preferences
  bool get isInitialized => _isInitialized;

  /// Load zoom level from persistent storage
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      final prefs = await SharedPreferences.getInstance();
      _zoomLevel = prefs.getDouble(_zoomLevelKey) ?? defaultZoom;
      _isInitialized = true;
      notifyListeners();
      debugPrint('TextZoomService initialized: ${_zoomLevel}x');
    } catch (e) {
      debugPrint('Error loading zoom level: $e');
      _zoomLevel = defaultZoom;
      _isInitialized = true;
    }
  }

  /// Set zoom level (clamped to min-max range) and persist
  Future<void> setZoomLevel(double level) async {
    final clampedLevel = level.clamp(minZoom, maxZoom);

    if ((_zoomLevel - clampedLevel).abs() < 0.01) return; // No significant change

    _zoomLevel = clampedLevel;
    notifyListeners();

    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setDouble(_zoomLevelKey, _zoomLevel);
      debugPrint('Zoom level saved: ${_zoomLevel}x');
    } catch (e) {
      debugPrint('Error saving zoom level: $e');
    }
  }

  /// Reset zoom to default (1x) and persist
  Future<void> resetZoom() async {
    await setZoomLevel(defaultZoom);
  }

  /// Increase zoom by step amount
  Future<void> zoomIn({double step = 0.25}) async {
    await setZoomLevel(_zoomLevel + step);
  }

  /// Decrease zoom by step amount
  Future<void> zoomOut({double step = 0.25}) async {
    await setZoomLevel(_zoomLevel - step);
  }

  /// Check if currently at minimum zoom
  bool get isAtMinZoom => (_zoomLevel - minZoom).abs() < 0.01;

  /// Check if currently at maximum zoom
  bool get isAtMaxZoom => (_zoomLevel - maxZoom).abs() < 0.01;

  /// Check if currently at default zoom
  bool get isAtDefaultZoom => (_zoomLevel - defaultZoom).abs() < 0.01;
}
