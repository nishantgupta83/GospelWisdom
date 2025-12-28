// android_app/app/src/main/java/com/hub4apps/gospel/app/GospelApplication.kt

package com.hub4apps.gospel.app

import android.app.Application
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor

/**
 * Gospel Wisdom Application
 * Initializes Flutter engine at app startup for optimal performance
 */
class GospelApplication : Application() {

    companion object {
        const val FLUTTER_ENGINE_ID = "gospelwisdom_engine"
    }

    lateinit var flutterEngine: FlutterEngine
        private set

    override fun onCreate() {
        super.onCreate()

        // Pre-warm the Flutter engine for instant startup
        flutterEngine = FlutterEngine(this).apply {
            // Run the flutter_core entry point
            dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint.createDefault()
            )
        }

        // Cache the engine for reuse across the app
        FlutterEngineCache.getInstance().put(FLUTTER_ENGINE_ID, flutterEngine)

        println("✅ Flutter engine initialized and cached")
    }

    override fun onTerminate() {
        super.onTerminate()
        flutterEngine.destroy()
        FlutterEngineCache.getInstance().remove(FLUTTER_ENGINE_ID)
    }
}
