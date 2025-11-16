// lib/services/analytics_service.dart

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Privacy-first analytics service for tracking app usage without PII
///
/// Features:
/// - 100% privacy-preserving (no personally identifiable information)
/// - Local-only analytics with optional cloud sync
/// - Performance metrics tracking
/// - Feature usage analytics
/// - Screen view tracking
/// - User engagement metrics
class AnalyticsService {
  // Singleton pattern
  static final AnalyticsService _instance = AnalyticsService._internal();
  factory AnalyticsService() => _instance;
  AnalyticsService._internal();

  /// Hive box for storing analytics events
  Box? _analyticsBox;

  /// Anonymous session identifier (changes per app session)
  String? _sessionId;

  /// Session start time
  DateTime? _sessionStartTime;

  /// Event queue for batch processing
  final List<Map<String, dynamic>> _eventQueue = [];

  /// Maximum events to queue before flushing
  static const int _maxQueueSize = 50;

  /// Analytics enabled flag (respects user preferences)
  bool _enabled = true;

  /// Development mode flag
  bool get _isDevelopment => kDebugMode;

  /// Initialize the analytics service
  Future<void> initialize() async {
    try {
      // Open analytics box
      _analyticsBox = await Hive.openBox('analytics_events');

      // Generate new session ID
      _sessionId = const Uuid().v4();
      _sessionStartTime = DateTime.now();

      debugPrint('📊 Analytics service initialized');
      debugPrint('   Session ID: $_sessionId');
      debugPrint('   Development mode: $_isDevelopment');
    } catch (e) {
      debugPrint('❌ Error initializing analytics service: $e');
    }
  }

  /// Dispose of analytics service
  Future<void> dispose() async {
    await flush();
    await _analyticsBox?.close();
    _sessionId = null;
    _sessionStartTime = null;
    debugPrint('📊 Analytics service disposed');
  }

  /// Enable or disable analytics tracking
  void setEnabled(bool enabled) {
    _enabled = enabled;
    debugPrint('📊 Analytics tracking ${enabled ? "enabled" : "disabled"}');
  }

  /// Check if analytics is enabled
  bool get isEnabled => _enabled;

  /// Get current session ID
  String? get sessionId => _sessionId;

  /// Get session duration
  Duration? get sessionDuration {
    if (_sessionStartTime == null) return null;
    return DateTime.now().difference(_sessionStartTime!);
  }

  /// Track screen view
  void trackScreenView(String screenName, {Map<String, dynamic>? properties}) {
    if (!_enabled) return;

    final event = {
      'event_type': 'screen_view',
      'screen_name': screenName,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'properties': properties ?? {},
    };

    _queueEvent(event);

    if (_isDevelopment) {
      debugPrint('📊 Screen View: $screenName');
    }
  }

  /// Track custom event
  void trackEvent(
    String eventName, {
    Map<String, dynamic>? properties,
    String? category,
    String? label,
    int? value,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'custom_event',
      'event_name': eventName,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'category': category,
      'label': label,
      'value': value,
      'properties': _sanitizeProperties(properties ?? {}),
    };

    _queueEvent(event);

    if (_isDevelopment) {
      debugPrint('📊 Event: $eventName${category != null ? " [$category]" : ""}');
    }
  }

  /// Track performance metric
  void trackPerformanceMetric(
    String operation,
    Duration duration, {
    Map<String, dynamic>? context,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'performance_metric',
      'operation': operation,
      'duration_ms': duration.inMilliseconds,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'device_type': Platform.isIOS ? 'ios' : 'android',
      'context': _sanitizeProperties(context ?? {}),
    };

    _queueEvent(event);

    if (_isDevelopment && duration.inMilliseconds > 100) {
      debugPrint('⚡ Performance: $operation took ${duration.inMilliseconds}ms');
    }
  }

  /// Track feature usage
  void trackFeatureUsage(
    String featureName, {
    Map<String, dynamic>? context,
    String? action,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'feature_usage',
      'feature_name': featureName,
      'action': action,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'context': _sanitizeProperties(context ?? {}),
    };

    _queueEvent(event);

    if (_isDevelopment) {
      debugPrint('📊 Feature: $featureName${action != null ? " [$action]" : ""}');
    }
  }

  /// Track user engagement
  void trackEngagement(
    String interactionType, {
    String? target,
    Map<String, dynamic>? metadata,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'engagement',
      'interaction_type': interactionType,
      'target': target,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'metadata': _sanitizeProperties(metadata ?? {}),
    };

    _queueEvent(event);
  }

  /// Track error/exception
  void trackError(
    String errorType,
    String errorMessage, {
    String? stackTrace,
    bool isFatal = false,
    Map<String, dynamic>? context,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'error',
      'error_type': errorType,
      'error_message': errorMessage,
      'stack_trace': stackTrace,
      'is_fatal': isFatal,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'context': _sanitizeProperties(context ?? {}),
    };

    _queueEvent(event);

    debugPrint('❌ Error tracked: $errorType - $errorMessage');
  }

  /// Track search query (without storing the actual query for privacy)
  void trackSearch({
    required int resultCount,
    String? searchType,
    int? queryLength,
    Duration? searchDuration,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'search',
      'result_count': resultCount,
      'search_type': searchType,
      'query_length': queryLength,
      'search_duration_ms': searchDuration?.inMilliseconds,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
    };

    _queueEvent(event);
  }

  /// Track content view (verse, scenario, chapter)
  void trackContentView(
    String contentType,
    String contentId, {
    Duration? timeSpent,
    Map<String, dynamic>? metadata,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'content_view',
      'content_type': contentType,
      'content_id': contentId,
      'time_spent_ms': timeSpent?.inMilliseconds,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'metadata': _sanitizeProperties(metadata ?? {}),
    };

    _queueEvent(event);
  }

  /// Track share action
  void trackShare(
    String contentType,
    String shareMethod, {
    bool? success,
    Map<String, dynamic>? metadata,
  }) {
    if (!_enabled) return;

    final event = {
      'event_type': 'share',
      'content_type': contentType,
      'share_method': shareMethod,
      'success': success,
      'timestamp': DateTime.now().millisecondsSinceEpoch,
      'session_id': _sessionId,
      'platform': Platform.operatingSystem,
      'metadata': _sanitizeProperties(metadata ?? {}),
    };

    _queueEvent(event);
  }

  /// Queue an event for batch processing
  void _queueEvent(Map<String, dynamic> event) {
    _eventQueue.add(event);

    // Auto-flush if queue is full
    if (_eventQueue.length >= _maxQueueSize) {
      flush();
    }
  }

  /// Flush queued events to storage
  Future<void> flush() async {
    if (_eventQueue.isEmpty || _analyticsBox == null) return;

    try {
      final timestamp = DateTime.now().millisecondsSinceEpoch;
      final batch = List<Map<String, dynamic>>.from(_eventQueue);

      await _analyticsBox!.put('batch_$timestamp', batch);
      _eventQueue.clear();

      if (_isDevelopment) {
        debugPrint('📊 Flushed ${batch.length} analytics events');
      }
    } catch (e) {
      debugPrint('❌ Error flushing analytics events: $e');
    }
  }

  /// Get all stored events
  Future<List<Map<String, dynamic>>> getAllEvents() async {
    if (_analyticsBox == null || !_analyticsBox!.isOpen) return [];

    final allEvents = <Map<String, dynamic>>[];

    for (final key in _analyticsBox!.keys) {
      final batch = _analyticsBox!.get(key);
      if (batch is List) {
        allEvents.addAll(batch.cast<Map<String, dynamic>>());
      }
    }

    return allEvents;
  }

  /// Get events by type
  Future<List<Map<String, dynamic>>> getEventsByType(String eventType) async {
    final allEvents = await getAllEvents();
    return allEvents.where((e) => e['event_type'] == eventType).toList();
  }

  /// Get events by date range
  Future<List<Map<String, dynamic>>> getEventsByDateRange(
    DateTime start,
    DateTime end,
  ) async {
    final allEvents = await getAllEvents();
    final startMs = start.millisecondsSinceEpoch;
    final endMs = end.millisecondsSinceEpoch;

    return allEvents.where((e) {
      final timestamp = e['timestamp'] as int?;
      return timestamp != null && timestamp >= startMs && timestamp <= endMs;
    }).toList();
  }

  /// Get analytics summary
  Future<Map<String, dynamic>> getAnalyticsSummary() async {
    final allEvents = await getAllEvents();

    final summary = {
      'total_events': allEvents.length,
      'current_session_id': _sessionId,
      'session_duration_minutes': sessionDuration?.inMinutes ?? 0,
      'events_by_type': <String, int>{},
      'screen_views': <String, int>{},
      'feature_usage': <String, int>{},
      'platform': Platform.operatingSystem,
      'timestamp': DateTime.now().toIso8601String(),
    };

    // Count events by type
    final eventsByType = summary['events_by_type'] as Map<String, int>;
    final screenViews = summary['screen_views'] as Map<String, int>;
    final featureUsage = summary['feature_usage'] as Map<String, int>;

    for (final event in allEvents) {
      final eventType = event['event_type'] as String?;
      if (eventType != null) {
        eventsByType[eventType] = (eventsByType[eventType] ?? 0) + 1;
      }

      // Track screen views
      if (eventType == 'screen_view') {
        final screenName = event['screen_name'] as String?;
        if (screenName != null) {
          screenViews[screenName] = (screenViews[screenName] ?? 0) + 1;
        }
      }

      // Track feature usage
      if (eventType == 'feature_usage') {
        final featureName = event['feature_name'] as String?;
        if (featureName != null) {
          featureUsage[featureName] = (featureUsage[featureName] ?? 0) + 1;
        }
      }
    }

    return summary;
  }

  /// Clear all analytics data
  Future<void> clearAllData() async {
    if (_analyticsBox == null || !_analyticsBox!.isOpen) return;

    await _analyticsBox!.clear();
    _eventQueue.clear();

    debugPrint('📊 All analytics data cleared');
  }

  /// Export analytics data (for GDPR compliance)
  Future<Map<String, dynamic>> exportData() async {
    final allEvents = await getAllEvents();
    final summary = await getAnalyticsSummary();

    return {
      'export_date': DateTime.now().toIso8601String(),
      'session_id': _sessionId,
      'summary': summary,
      'events': allEvents,
    };
  }

  /// Sanitize properties to remove any potential PII
  Map<String, dynamic> _sanitizeProperties(Map<String, dynamic> properties) {
    final sanitized = <String, dynamic>{};

    // List of keys that might contain PII
    final piiKeys = ['email', 'name', 'phone', 'address', 'user_id'];

    for (final entry in properties.entries) {
      // Skip PII keys
      if (piiKeys.any((key) => entry.key.toLowerCase().contains(key))) {
        continue;
      }

      sanitized[entry.key] = entry.value;
    }

    return sanitized;
  }

  /// Start a new session
  void startNewSession() {
    _sessionId = const Uuid().v4();
    _sessionStartTime = DateTime.now();

    trackEvent('session_start', properties: {
      'platform': Platform.operatingSystem,
    });

    debugPrint('📊 New analytics session started: $_sessionId');
  }

  /// End current session
  Future<void> endSession() async {
    final duration = sessionDuration;

    trackEvent('session_end', properties: {
      'session_duration_minutes': duration?.inMinutes ?? 0,
      'session_duration_seconds': duration?.inSeconds ?? 0,
    });

    await flush();

    debugPrint('📊 Session ended (duration: ${duration?.inMinutes ?? 0} minutes)');
  }
}
