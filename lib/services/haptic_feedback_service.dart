// lib/services/haptic_feedback_service.dart

import 'package:flutter/services.dart';

/// Centralized haptic feedback service following Apple HIG guidelines
/// Uses strategic haptics to enhance user interactions without causing fatigue
class HapticFeedbackService {
  static final HapticFeedbackService _instance = HapticFeedbackService._internal();
  factory HapticFeedbackService() => _instance;
  HapticFeedbackService._internal();

  /// Light impact: Verse selection, tab switches, minor interactions
  static void light() {
    HapticFeedback.lightImpact();
  }

  /// Medium impact: Bookmarking, note creation, important actions
  static void medium() {
    HapticFeedback.mediumImpact();
  }

  /// Heavy impact: Chapter completion, achievement unlocked, major milestones
  static void heavy() {
    HapticFeedback.heavyImpact();
  }

  /// Selection feedback: Scrolling through pickers, rating stars
  static void selection() {
    HapticFeedback.selectionClick();
  }

  /// Success notification: Verse saved, note created successfully
  static void success() {
    HapticFeedback.mediumImpact();
  }

  /// Warning notification: Offline mode activated, caution needed
  static void warning() {
    HapticFeedback.lightImpact();
  }

  /// Error notification: Failed to load content, operation error
  static void error() {
    HapticFeedback.heavyImpact();
  }
}
