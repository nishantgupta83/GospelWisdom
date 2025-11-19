// test/services/analytics_service_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:GospelWisdom/services/analytics_service.dart';
import '../test_setup.dart';

void main() {
  late AnalyticsService service;

  setUpAll(() async {
    await setupTestEnvironment();
  });

  tearDownAll(() async {
    await teardownTestEnvironment();
  });

  setUp(() async {
    service = AnalyticsService();
    await service.initialize();
  });

  tearDown(() async {
    try {
      await service.clearAllData();
    } catch (e) {
      // Box might be closed
    }
    await service.dispose();
  });

  group('AnalyticsService - Initialization', () {
    test('should initialize successfully', () async {
      final newService = AnalyticsService();
      await newService.initialize();

      expect(newService.isEnabled, isTrue);
      expect(newService.sessionId, isNotNull);
      expect(newService.sessionDuration, isNotNull);

      await newService.dispose();
    });

    test('should generate unique session IDs', () async {
      final service1 = AnalyticsService();
      await service1.initialize();
      final sessionId1 = service1.sessionId;

      service1.startNewSession();
      final sessionId2 = service1.sessionId;

      expect(sessionId1, isNotNull);
      expect(sessionId2, isNotNull);
      expect(sessionId1, isNot(equals(sessionId2)));

      await service1.dispose();
    });

    test('should track session duration', () async {
      final newService = AnalyticsService();
      await newService.initialize();

      await Future.delayed(const Duration(milliseconds: 100));

      final duration = newService.sessionDuration;
      expect(duration, isNotNull);
      expect(duration!.inMilliseconds, greaterThan(0));

      await newService.dispose();
    });

    test('should handle initialization errors gracefully', () async {
      // Close Hive to force initialization error
      if (Hive.isBoxOpen('analytics_events')) {
        await Hive.box('analytics_events').close();
      }

      final newService = AnalyticsService();
      // Should not throw even if initialization fails
      await expectLater(newService.initialize(), completes);

      await newService.dispose();
    });

    test('should dispose successfully', () async {
      final newService = AnalyticsService();
      await newService.initialize();
      await newService.dispose();

      expect(newService.sessionId, isNull);
    });
  });

  group('AnalyticsService - Enable/Disable', () {
    test('should enable analytics tracking', () {
      service.setEnabled(true);
      expect(service.isEnabled, isTrue);
    });

    test('should disable analytics tracking', () {
      service.setEnabled(false);
      expect(service.isEnabled, isFalse);
    });

    test('should not track events when disabled', () async {
      service.setEnabled(false);
      service.trackEvent('test_event');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, isEmpty);
    });

    test('should track events when enabled', () async {
      service.setEnabled(true);
      service.trackEvent('test_event');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, isNotEmpty);
    });
  });

  group('AnalyticsService - Screen Tracking', () {
    test('should track screen view', () async {
      service.trackScreenView('HomeScreen');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('screen_view'));
      expect(events[0]['screen_name'], equals('HomeScreen'));
    });

    test('should track screen view with properties', () async {
      service.trackScreenView('HomeScreen', properties: {
        'source': 'navigation',
        'timestamp': 123456,
      });
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['properties'], isNotNull);
      expect(events[0]['properties']['source'], equals('navigation'));
    });

    test('should track multiple screen views', () async {
      service.trackScreenView('HomeScreen');
      service.trackScreenView('ChaptersScreen');
      service.trackScreenView('ScenariosScreen');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(3));
    });

    test('should include session ID in screen views', () async {
      service.trackScreenView('HomeScreen');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['session_id'], equals(service.sessionId));
    });
  });

  group('AnalyticsService - Event Tracking', () {
    test('should track custom event', () async {
      service.trackEvent('button_click');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('custom_event'));
      expect(events[0]['event_name'], equals('button_click'));
    });

    test('should track event with properties', () async {
      service.trackEvent('search_performed', properties: {
        'query_length': 10,
        'results_count': 5,
      });
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['properties'], isNotNull);
      expect(events[0]['properties']['query_length'], equals(10));
      expect(events[0]['properties']['results_count'], equals(5));
    });

    test('should track event with category and label', () async {
      service.trackEvent(
        'item_selected',
        category: 'navigation',
        label: 'sidebar',
        value: 1,
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['category'], equals('navigation'));
      expect(events[0]['label'], equals('sidebar'));
      expect(events[0]['value'], equals(1));
    });

    test('should sanitize properties to remove PII', () async {
      service.trackEvent('user_action', properties: {
        'email': 'test@example.com',
        'name': 'John Doe',
        'action': 'click',
        'phone': '1234567890',
      });
      await service.flush();

      final events = await service.getAllEvents();
      final props = events[0]['properties'] as Map<String, dynamic>;

      // PII should be removed
      expect(props.containsKey('email'), isFalse);
      expect(props.containsKey('name'), isFalse);
      expect(props.containsKey('phone'), isFalse);

      // Non-PII should remain
      expect(props['action'], equals('click'));
    });

    test('should include timestamp in events', () async {
      service.trackEvent('test_event');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['timestamp'], isNotNull);
      expect(events[0]['timestamp'], isA<int>());
    });
  });

  group('AnalyticsService - Performance Tracking', () {
    test('should track performance metric', () async {
      service.trackPerformanceMetric(
        'search_operation',
        const Duration(milliseconds: 150),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('performance_metric'));
      expect(events[0]['operation'], equals('search_operation'));
      expect(events[0]['duration_ms'], equals(150));
    });

    test('should track performance metric with context', () async {
      service.trackPerformanceMetric(
        'api_call',
        const Duration(milliseconds: 200),
        context: {
          'endpoint': '/api/scenarios',
          'method': 'GET',
        },
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['context'], isNotNull);
      expect(events[0]['context']['endpoint'], equals('/api/scenarios'));
    });

    test('should track fast operations', () async {
      service.trackPerformanceMetric(
        'cache_read',
        const Duration(milliseconds: 5),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['duration_ms'], equals(5));
    });

    test('should track slow operations', () async {
      service.trackPerformanceMetric(
        'database_query',
        const Duration(seconds: 2),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['duration_ms'], equals(2000));
    });
  });

  group('AnalyticsService - Feature Usage', () {
    test('should track feature usage', () async {
      service.trackFeatureUsage('bookmark');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('feature_usage'));
      expect(events[0]['feature_name'], equals('bookmark'));
    });

    test('should track feature usage with action', () async {
      service.trackFeatureUsage('search', action: 'semantic');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['action'], equals('semantic'));
    });

    test('should track feature usage with context', () async {
      service.trackFeatureUsage('journal', context: {
        'entry_count': 5,
        'has_tags': true,
      });
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['context'], isNotNull);
      expect(events[0]['context']['entry_count'], equals(5));
    });

    test('should track multiple feature usages', () async {
      service.trackFeatureUsage('search');
      service.trackFeatureUsage('bookmark');
      service.trackFeatureUsage('share');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(3));
    });
  });

  group('AnalyticsService - Engagement Tracking', () {
    test('should track engagement', () async {
      service.trackEngagement('tap');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('engagement'));
      expect(events[0]['interaction_type'], equals('tap'));
    });

    test('should track engagement with target', () async {
      service.trackEngagement('swipe', target: 'verse_card');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['target'], equals('verse_card'));
    });

    test('should track engagement with metadata', () async {
      service.trackEngagement('scroll', metadata: {
        'direction': 'down',
        'distance': 500,
      });
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['metadata'], isNotNull);
      expect(events[0]['metadata']['direction'], equals('down'));
    });
  });

  group('AnalyticsService - Error Tracking', () {
    test('should track error', () async {
      service.trackError('network_error', 'Failed to connect');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('error'));
      expect(events[0]['error_type'], equals('network_error'));
      expect(events[0]['error_message'], equals('Failed to connect'));
    });

    test('should track error with stack trace', () async {
      service.trackError(
        'exception',
        'Null pointer',
        stackTrace: 'Stack trace here',
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['stack_trace'], equals('Stack trace here'));
    });

    test('should track fatal errors', () async {
      service.trackError('crash', 'App crashed', isFatal: true);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['is_fatal'], isTrue);
    });

    test('should track error with context', () async {
      service.trackError(
        'api_error',
        'Request failed',
        context: {
          'endpoint': '/api/test',
          'status_code': 500,
        },
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['context'], isNotNull);
      expect(events[0]['context']['status_code'], equals(500));
    });
  });

  group('AnalyticsService - Search Tracking', () {
    test('should track search', () async {
      service.trackSearch(resultCount: 10);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('search'));
      expect(events[0]['result_count'], equals(10));
    });

    test('should track search with type', () async {
      service.trackSearch(
        resultCount: 5,
        searchType: 'semantic',
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['search_type'], equals('semantic'));
    });

    test('should track search with query length', () async {
      service.trackSearch(
        resultCount: 3,
        queryLength: 15,
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['query_length'], equals(15));
    });

    test('should track search duration', () async {
      service.trackSearch(
        resultCount: 8,
        searchDuration: const Duration(milliseconds: 120),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['search_duration_ms'], equals(120));
    });

    test('should track searches with no results', () async {
      service.trackSearch(resultCount: 0);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['result_count'], equals(0));
    });
  });

  group('AnalyticsService - Content View Tracking', () {
    test('should track content view', () async {
      service.trackContentView('verse', '1-1');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('content_view'));
      expect(events[0]['content_type'], equals('verse'));
      expect(events[0]['content_id'], equals('1-1'));
    });

    test('should track content view with time spent', () async {
      service.trackContentView(
        'chapter',
        '5',
        timeSpent: const Duration(minutes: 2),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['time_spent_ms'], equals(120000));
    });

    test('should track content view with metadata', () async {
      service.trackContentView(
        'scenario',
        '42',
        metadata: {
          'category': 'work',
          'difficulty': 3,
        },
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['metadata'], isNotNull);
      expect(events[0]['metadata']['category'], equals('work'));
    });

    test('should track multiple content views', () async {
      service.trackContentView('verse', '1-1');
      service.trackContentView('verse', '1-2');
      service.trackContentView('chapter', '2');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(3));
    });
  });

  group('AnalyticsService - Share Tracking', () {
    test('should track share', () async {
      service.trackShare('verse', 'whatsapp');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(1));
      expect(events[0]['event_type'], equals('share'));
      expect(events[0]['content_type'], equals('verse'));
      expect(events[0]['share_method'], equals('whatsapp'));
    });

    test('should track share success', () async {
      service.trackShare('scenario', 'twitter', success: true);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['success'], isTrue);
    });

    test('should track share failure', () async {
      service.trackShare('chapter', 'email', success: false);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['success'], isFalse);
    });

    test('should track share with metadata', () async {
      service.trackShare(
        'verse',
        'copy_link',
        metadata: {
          'chapter': 1,
          'verse': 1,
        },
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['metadata'], isNotNull);
      expect(events[0]['metadata']['chapter'], equals(1));
    });
  });

  group('AnalyticsService - Event Queue', () {
    test('should queue events', () async {
      service.trackEvent('event1');
      service.trackEvent('event2');
      service.trackEvent('event3');

      // Events are queued but not flushed yet
      final eventsBefore = await service.getAllEvents();
      expect(eventsBefore, isEmpty);

      await service.flush();

      final eventsAfter = await service.getAllEvents();
      expect(eventsAfter, hasLength(3));
    });

    test('should auto-flush when queue is full', () async {
      // Track more than max queue size events
      for (int i = 0; i < 55; i++) {
        service.trackEvent('event_$i');
      }

      // Should have auto-flushed at 50 events
      final events = await service.getAllEvents();
      expect(events.length, greaterThanOrEqualTo(50));
    });

    test('should handle empty queue flush', () async {
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, isEmpty);
    });

    test('should flush all queued events', () async {
      for (int i = 0; i < 10; i++) {
        service.trackEvent('event_$i');
      }

      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(10));
    });
  });

  group('AnalyticsService - Event Retrieval', () {
    test('should get all events', () async {
      service.trackEvent('event1');
      service.trackEvent('event2');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(2));
    });

    test('should get events by type', () async {
      service.trackScreenView('HomeScreen');
      service.trackEvent('custom_event');
      service.trackError('error', 'message');
      await service.flush();

      final screenEvents = await service.getEventsByType('screen_view');
      expect(screenEvents, hasLength(1));

      final errorEvents = await service.getEventsByType('error');
      expect(errorEvents, hasLength(1));
    });

    test('should get events by date range', () async {
      final now = DateTime.now();
      final yesterday = now.subtract(const Duration(days: 1));
      final tomorrow = now.add(const Duration(days: 1));

      service.trackEvent('today_event');
      await service.flush();

      final events = await service.getEventsByDateRange(yesterday, tomorrow);
      expect(events, hasLength(1));
    });

    test('should handle empty event retrieval', () async {
      final events = await service.getAllEvents();
      expect(events, isEmpty);
    });

    test('should handle events by non-existent type', () async {
      service.trackEvent('test');
      await service.flush();

      final events = await service.getEventsByType('non_existent');
      expect(events, isEmpty);
    });
  });

  group('AnalyticsService - Analytics Summary', () {
    test('should get analytics summary', () async {
      service.trackScreenView('HomeScreen');
      service.trackEvent('button_click');
      service.trackFeatureUsage('search');
      await service.flush();

      final summary = await service.getAnalyticsSummary();
      expect(summary['total_events'], equals(3));
      expect(summary['current_session_id'], equals(service.sessionId));
    });

    test('should count events by type in summary', () async {
      service.trackScreenView('HomeScreen');
      service.trackScreenView('ChaptersScreen');
      service.trackEvent('click');
      await service.flush();

      final summary = await service.getAnalyticsSummary();
      final eventsByType = summary['events_by_type'] as Map<String, int>;
      expect(eventsByType['screen_view'], equals(2));
      expect(eventsByType['custom_event'], equals(1));
    });

    test('should count screen views in summary', () async {
      service.trackScreenView('HomeScreen');
      service.trackScreenView('HomeScreen');
      service.trackScreenView('ChaptersScreen');
      await service.flush();

      final summary = await service.getAnalyticsSummary();
      final screenViews = summary['screen_views'] as Map<String, int>;
      expect(screenViews['HomeScreen'], equals(2));
      expect(screenViews['ChaptersScreen'], equals(1));
    });

    test('should count feature usage in summary', () async {
      service.trackFeatureUsage('search');
      service.trackFeatureUsage('bookmark');
      service.trackFeatureUsage('search');
      await service.flush();

      final summary = await service.getAnalyticsSummary();
      final featureUsage = summary['feature_usage'] as Map<String, int>;
      expect(featureUsage['search'], equals(2));
      expect(featureUsage['bookmark'], equals(1));
    });

    test('should include session duration in summary', () async {
      await Future.delayed(const Duration(milliseconds: 100));

      final summary = await service.getAnalyticsSummary();
      expect(summary['session_duration_minutes'], isA<int>());
      expect(summary['session_duration_minutes'], greaterThanOrEqualTo(0));
    });

    test('should handle empty summary', () async {
      final summary = await service.getAnalyticsSummary();
      expect(summary['total_events'], equals(0));
      expect(summary['events_by_type'], isEmpty);
    });
  });

  group('AnalyticsService - Data Management', () {
    test('should clear all data', () async {
      service.trackEvent('event1');
      service.trackEvent('event2');
      await service.flush();

      await service.clearAllData();

      final events = await service.getAllEvents();
      expect(events, isEmpty);
    });

    test('should export data', () async {
      service.trackEvent('test_event');
      await service.flush();

      final exportData = await service.exportData();
      expect(exportData['export_date'], isNotNull);
      expect(exportData['session_id'], equals(service.sessionId));
      expect(exportData['summary'], isNotNull);
      expect(exportData['events'], isNotNull);
    });

    test('should include summary in export', () async {
      service.trackEvent('event1');
      service.trackEvent('event2');
      await service.flush();

      final exportData = await service.exportData();
      final summary = exportData['summary'] as Map<String, dynamic>;
      expect(summary['total_events'], equals(2));
    });

    test('should include all events in export', () async {
      service.trackEvent('event1');
      service.trackEvent('event2');
      await service.flush();

      final exportData = await service.exportData();
      final events = exportData['events'] as List<Map<String, dynamic>>;
      expect(events, hasLength(2));
    });

    test('should handle export with no data', () async {
      final exportData = await service.exportData();
      expect(exportData['events'], isEmpty);
    });
  });

  group('AnalyticsService - Session Management', () {
    test('should start new session', () {
      final oldSessionId = service.sessionId;
      service.startNewSession();
      final newSessionId = service.sessionId;

      expect(oldSessionId, isNot(equals(newSessionId)));
    });

    test('should track session start event', () async {
      service.startNewSession();
      await service.flush();

      final events = await service.getAllEvents();
      final sessionStartEvents = events.where(
        (e) => e['event_name'] == 'session_start',
      );
      expect(sessionStartEvents, isNotEmpty);
    });

    test('should end session', () async {
      await Future.delayed(const Duration(milliseconds: 100));
      await service.endSession();

      final events = await service.getAllEvents();
      final sessionEndEvents = events.where(
        (e) => e['event_name'] == 'session_end',
      );
      expect(sessionEndEvents, isNotEmpty);
    });

    test('should track session duration on end', () async {
      await Future.delayed(const Duration(milliseconds: 100));
      await service.endSession();

      final events = await service.getAllEvents();
      final sessionEndEvent = events.firstWhere(
        (e) => e['event_name'] == 'session_end',
      );

      expect(sessionEndEvent['properties'], isNotNull);
      expect(
        sessionEndEvent['properties']['session_duration_seconds'],
        isA<int>(),
      );
    });

    test('should flush events on session end', () async {
      service.trackEvent('pre_end_event');
      await service.endSession();

      final events = await service.getAllEvents();
      expect(events, isNotEmpty);
    });
  });

  group('AnalyticsService - Privacy & Sanitization', () {
    test('should remove email from properties', () async {
      service.trackEvent('action', properties: {
        'email': 'user@example.com',
        'action_type': 'click',
      });
      await service.flush();

      final events = await service.getAllEvents();
      final props = events[0]['properties'] as Map<String, dynamic>;
      expect(props.containsKey('email'), isFalse);
      expect(props.containsKey('action_type'), isTrue);
    });

    test('should remove name from properties', () async {
      service.trackEvent('action', properties: {
        'name': 'John Doe',
        'user_name': 'johndoe',
        'action': 'submit',
      });
      await service.flush();

      final events = await service.getAllEvents();
      final props = events[0]['properties'] as Map<String, dynamic>;
      expect(props.containsKey('name'), isFalse);
      expect(props.containsKey('user_name'), isFalse);
      expect(props.containsKey('action'), isTrue);
    });

    test('should remove phone from properties', () async {
      service.trackEvent('action', properties: {
        'phone': '1234567890',
        'phone_number': '+1-234-567-8900',
        'action': 'call',
      });
      await service.flush();

      final events = await service.getAllEvents();
      final props = events[0]['properties'] as Map<String, dynamic>;
      expect(props.containsKey('phone'), isFalse);
      expect(props.containsKey('phone_number'), isFalse);
      expect(props.containsKey('action'), isTrue);
    });

    test('should keep non-PII properties', () async {
      service.trackEvent('action', properties: {
        'action_type': 'click',
        'target': 'button',
        'screen': 'home',
        'timestamp': 123456,
      });
      await service.flush();

      final events = await service.getAllEvents();
      final props = events[0]['properties'] as Map<String, dynamic>;
      expect(props['action_type'], equals('click'));
      expect(props['target'], equals('button'));
      expect(props['screen'], equals('home'));
      expect(props['timestamp'], equals(123456));
    });

    test('should handle empty properties', () async {
      service.trackEvent('action', properties: {});
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['properties'], isEmpty);
    });
  });

  group('AnalyticsService - Edge Cases', () {
    test('should handle null properties', () async {
      service.trackEvent('action');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['properties'], isNotNull);
      expect(events[0]['properties'], isA<Map<String, dynamic>>());
    });

    test('should handle very long event names', () async {
      final longName = 'a' * 1000;
      service.trackEvent(longName);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['event_name'], equals(longName));
    });

    test('should handle special characters in event names', () async {
      service.trackEvent('event_with_!@#\$%^&*()');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['event_name'], equals('event_with_!@#\$%^&*()'));
    });

    test('should handle concurrent event tracking', () async {
      final futures = <Future>[];
      for (int i = 0; i < 10; i++) {
        futures.add(Future.microtask(() {
          service.trackEvent('concurrent_event_$i');
        }));
      }

      await Future.wait(futures);
      await service.flush();

      final events = await service.getAllEvents();
      expect(events.length, greaterThanOrEqualTo(10));
    });

    test('should handle rapid event tracking', () async {
      for (int i = 0; i < 100; i++) {
        service.trackEvent('rapid_event_$i');
      }
      await service.flush();

      final events = await service.getAllEvents();
      expect(events.length, greaterThanOrEqualTo(100));
    });

    test('should handle zero duration performance metrics', () async {
      service.trackPerformanceMetric(
        'instant_operation',
        Duration.zero,
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['duration_ms'], equals(0));
    });

    test('should handle very long durations', () async {
      service.trackPerformanceMetric(
        'long_operation',
        const Duration(hours: 24),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['duration_ms'], equals(86400000));
    });

    test('should handle multiple flushes', () async {
      service.trackEvent('event1');
      await service.flush();

      service.trackEvent('event2');
      await service.flush();

      service.trackEvent('event3');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events, hasLength(3));
    });

    test('should handle dispose without initialization', () async {
      final uninitializedService = AnalyticsService();
      await expectLater(uninitializedService.dispose(), completes);
    });

    test('should handle tracking after dispose', () async {
      final tempService = AnalyticsService();
      await tempService.initialize();
      await tempService.dispose();

      // Should not throw even after dispose
      tempService.trackEvent('after_dispose');
      await expectLater(tempService.flush(), completes);
    });
  });

  group('AnalyticsService - Platform Detection', () {
    test('should include platform in events', () async {
      service.trackEvent('platform_test');
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['platform'], isNotNull);
      expect(events[0]['platform'], isA<String>());
    });

    test('should include platform in performance metrics', () async {
      service.trackPerformanceMetric(
        'test',
        const Duration(milliseconds: 100),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['platform'], isNotNull);
    });

    test('should include device type in performance metrics', () async {
      service.trackPerformanceMetric(
        'test',
        const Duration(milliseconds: 100),
      );
      await service.flush();

      final events = await service.getAllEvents();
      expect(events[0]['device_type'], isNotNull);
      expect(events[0]['device_type'], isIn(['ios', 'android']));
    });
  });
}
