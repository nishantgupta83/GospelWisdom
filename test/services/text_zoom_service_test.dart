// test/services/text_zoom_service_test.dart

import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:GospelWisdom/services/text_zoom_service.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('TextZoomService Tests', () {
    late TextZoomService zoomService;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      zoomService = TextZoomService();
    });

    tearDown(() {
      zoomService.dispose();
    });

    group('Initialization', () {
      test('should initialize with default zoom level', () async {
        await zoomService.initialize();

        expect(zoomService.isInitialized, isTrue);
        expect(zoomService.zoomLevel, equals(1.0));
        expect(zoomService.isAtDefaultZoom, isTrue);
      });

      test('should load saved zoom level from preferences', () async {
        SharedPreferences.setMockInitialValues({'text_zoom_level': 2.0});
        zoomService = TextZoomService();

        await zoomService.initialize();

        expect(zoomService.zoomLevel, equals(2.0));
      });

      test('should not re-initialize if already initialized', () async {
        await zoomService.initialize();
        final firstZoom = zoomService.zoomLevel;

        await zoomService.initialize(); // Second call

        expect(zoomService.zoomLevel, equals(firstZoom));
      });
    });

    group('Zoom Level Management', () {
      setUp(() async {
        await zoomService.initialize();
      });

      test('should set zoom level within valid range', () async {
        await zoomService.setZoomLevel(2.0);

        expect(zoomService.zoomLevel, equals(2.0));
      });

      test('should clamp zoom level to minimum (1.0)', () async {
        await zoomService.setZoomLevel(0.5);

        expect(zoomService.zoomLevel, equals(1.0));
        expect(zoomService.isAtMinZoom, isTrue);
      });

      test('should clamp zoom level to maximum (3.0)', () async {
        await zoomService.setZoomLevel(5.0);

        expect(zoomService.zoomLevel, equals(3.0));
        expect(zoomService.isAtMaxZoom, isTrue);
      });

      test('should persist zoom level to SharedPreferences', () async {
        await zoomService.setZoomLevel(2.5);

        final prefs = await SharedPreferences.getInstance();
        expect(prefs.getDouble('text_zoom_level'), equals(2.5));
      });

      test('should not update if zoom level is same', () async {
        int listenerCount = 0;
        zoomService.addListener(() => listenerCount++);

        await zoomService.setZoomLevel(1.0); // Same as default

        expect(listenerCount, equals(0)); // No notification
      });
    });

    group('Zoom Operations', () {
      setUp(() async {
        await zoomService.initialize();
      });

      test('should zoom in by default step (0.25)', () async {
        await zoomService.zoomIn();

        expect(zoomService.zoomLevel, equals(1.25));
      });

      test('should zoom in by custom step', () async {
        await zoomService.zoomIn(step: 0.5);

        expect(zoomService.zoomLevel, equals(1.5));
      });

      test('should zoom out by default step (0.25)', () async {
        await zoomService.setZoomLevel(2.0);
        await zoomService.zoomOut();

        expect(zoomService.zoomLevel, equals(1.75));
      });

      test('should zoom out by custom step', () async {
        await zoomService.setZoomLevel(2.0);
        await zoomService.zoomOut(step: 0.5);

        expect(zoomService.zoomLevel, equals(1.5));
      });

      test('should not zoom in beyond maximum', () async {
        await zoomService.setZoomLevel(3.0);
        await zoomService.zoomIn();

        expect(zoomService.zoomLevel, equals(3.0));
      });

      test('should not zoom out below minimum', () async {
        await zoomService.setZoomLevel(1.0);
        await zoomService.zoomOut();

        expect(zoomService.zoomLevel, equals(1.0));
      });

      test('should reset zoom to default (1.0)', () async {
        await zoomService.setZoomLevel(2.5);
        await zoomService.resetZoom();

        expect(zoomService.zoomLevel, equals(1.0));
        expect(zoomService.isAtDefaultZoom, isTrue);
      });
    });

    group('Zoom State Checks', () {
      setUp(() async {
        await zoomService.initialize();
      });

      test('should correctly identify minimum zoom', () async {
        await zoomService.setZoomLevel(1.0);

        expect(zoomService.isAtMinZoom, isTrue);
        expect(zoomService.isAtMaxZoom, isFalse);
      });

      test('should correctly identify maximum zoom', () async {
        await zoomService.setZoomLevel(3.0);

        expect(zoomService.isAtMaxZoom, isTrue);
        expect(zoomService.isAtMinZoom, isFalse);
      });

      test('should correctly identify default zoom', () async {
        await zoomService.setZoomLevel(1.0);

        expect(zoomService.isAtDefaultZoom, isTrue);
      });

      test('should correctly identify non-default zoom', () async {
        await zoomService.setZoomLevel(1.5);

        expect(zoomService.isAtDefaultZoom, isFalse);
      });
    });

    group('Change Notification', () {
      setUp(() async {
        await zoomService.initialize();
      });

      test('should notify listeners on zoom level change', () async {
        int notificationCount = 0;
        zoomService.addListener(() => notificationCount++);

        await zoomService.setZoomLevel(2.0);

        expect(notificationCount, equals(1));
      });

      test('should notify listeners on zoom in', () async {
        int notificationCount = 0;
        zoomService.addListener(() => notificationCount++);

        await zoomService.zoomIn();

        expect(notificationCount, equals(1));
      });

      test('should notify listeners on zoom out', () async {
        int notificationCount = 0;
        zoomService.addListener(() => notificationCount++);

        await zoomService.setZoomLevel(2.0); // Setup
        notificationCount = 0; // Reset

        await zoomService.zoomOut();

        expect(notificationCount, equals(1));
      });

      test('should notify listeners on reset', () async {
        int notificationCount = 0;
        await zoomService.setZoomLevel(2.0);

        zoomService.addListener(() => notificationCount++);
        await zoomService.resetZoom();

        expect(notificationCount, equals(1));
      });
    });

    group('Persistence Across Sessions', () {
      test('should preserve zoom level across service instances', () async {
        // First instance
        final service1 = TextZoomService();
        await service1.initialize();
        await service1.setZoomLevel(2.5);
        service1.dispose();

        // Second instance
        final service2 = TextZoomService();
        await service2.initialize();

        expect(service2.zoomLevel, equals(2.5));
        service2.dispose();
      });
    });

    group('Edge Cases', () {
      setUp(() async {
        await zoomService.initialize();
      });

      test('should handle very small zoom increments', () async {
        await zoomService.setZoomLevel(1.01);

        expect(zoomService.zoomLevel, equals(1.01));
      });

      test('should handle negative zoom values (clamp to min)', () async {
        await zoomService.setZoomLevel(-1.0);

        expect(zoomService.zoomLevel, equals(1.0));
      });

      test('should handle zero zoom value (clamp to min)', () async {
        await zoomService.setZoomLevel(0.0);

        expect(zoomService.zoomLevel, equals(1.0));
      });

      test('should handle rapid zoom changes', () async {
        for (int i = 0; i < 10; i++) {
          await zoomService.zoomIn(step: 0.1);
        }

        expect(zoomService.zoomLevel, equals(2.0));
      });
    });

    group('Common Usage Patterns', () {
      setUp(() async {
        await zoomService.initialize();
      });

      test('should support typical user zoom workflow', () async {
        // User zooms in gradually
        await zoomService.zoomIn(); // 1.25
        expect(zoomService.zoomLevel, equals(1.25));

        await zoomService.zoomIn(); // 1.5
        expect(zoomService.zoomLevel, equals(1.5));

        // User zooms out
        await zoomService.zoomOut(); // 1.25
        expect(zoomService.zoomLevel, equals(1.25));

        // User resets
        await zoomService.resetZoom(); // 1.0
        expect(zoomService.isAtDefaultZoom, isTrue);
      });

      test('should handle pinch-to-zoom simulation', () async {
        // Simulate pinch gesture (continuous zoom)
        await zoomService.setZoomLevel(1.2);
        await zoomService.setZoomLevel(1.5);
        await zoomService.setZoomLevel(1.8);
        await zoomService.setZoomLevel(2.0);

        expect(zoomService.zoomLevel, equals(2.0));
      });
    });
  });
}
