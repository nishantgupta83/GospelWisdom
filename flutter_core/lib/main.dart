// flutter_core/lib/main.dart
//
// Entry point for flutter_core module when running as Add-to-App
// This is called when the FlutterEngine is attached to a native app

import 'package:flutter/material.dart';
import 'bridge/gospel_bridge.dart';

/// Main entry point - registers bridge handlers
/// Native apps will call this via FlutterEngine initialization
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Register all MethodChannel handlers
  GospelBridge.registerHandlers();

  // Note: We don't run a Flutter app here - native apps own the UI
  // The Flutter engine just runs in the background handling business logic

  debugPrint('✅ flutter_core initialized - bridge handlers registered');

  // Keep the isolate alive for method channel calls
  // Native app controls the FlutterEngine lifecycle
}

/// Alternative entry point for testing/debugging
/// Provides a minimal UI to verify bridge functionality
@pragma('vm:entry-point')
void debugMain() {
  WidgetsFlutterBinding.ensureInitialized();
  GospelBridge.registerHandlers();

  runApp(const _DebugApp());
}

/// Minimal debug app for testing bridge functionality
class _DebugApp extends StatelessWidget {
  const _DebugApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_core Debug',
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_core')),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.check_circle, size: 64, color: Colors.green),
              SizedBox(height: 16),
              Text('Bridge Handlers Registered'),
              SizedBox(height: 8),
              Text(
                'This module is headless.\nNative apps handle UI.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
