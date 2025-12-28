// ios_app/Bridge/FlutterEngineManager.swift
//
// Manages the Flutter engine lifecycle for the native iOS app

import Foundation
import Flutter

/// Singleton manager for Flutter engine
/// Ensures engine is created once and reused across the app
@MainActor
class FlutterEngineManager: ObservableObject {
    static let shared = FlutterEngineManager()

    private(set) var engine: FlutterEngine?
    private(set) var isReady = false

    private init() {}

    /// Ensure Flutter engine is initialized and ready
    func ensureEngineReady() async {
        guard !isReady else { return }

        // Create and run the Flutter engine
        let engine = FlutterEngine(name: "gospelwisdom_engine")

        // Run with the flutter_core entry point
        let success = engine.run(withEntrypoint: nil) // Uses main() from flutter_core

        if success {
            self.engine = engine
            self.isReady = true
            print("✅ Flutter engine initialized successfully")
        } else {
            print("❌ Failed to initialize Flutter engine")
        }
    }

    /// Get the method channel for bridge communication
    var channel: FlutterMethodChannel? {
        guard let engine = engine else { return nil }
        return FlutterMethodChannel(
            name: "gospelwisdom/core",
            binaryMessenger: engine.binaryMessenger
        )
    }

    /// Cleanup engine on app termination
    func shutdown() {
        engine?.destroyContext()
        engine = nil
        isReady = false
    }
}
