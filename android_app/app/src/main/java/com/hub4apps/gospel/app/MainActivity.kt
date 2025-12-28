// android_app/app/src/main/java/com/hub4apps/gospel/app/MainActivity.kt

package com.hub4apps.gospel.app

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.enableEdgeToEdge
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import com.hub4apps.gospel.bridge.FlutterBridge
import com.hub4apps.gospel.ui.theme.GospelWisdomTheme
import io.flutter.embedding.engine.FlutterEngineCache

/**
 * Main Activity - hosts the Compose UI
 * Uses Flutter engine from cache for business logic
 */
class MainActivity : ComponentActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        enableEdgeToEdge()

        // Get cached Flutter engine
        val flutterEngine = FlutterEngineCache.getInstance()
            .get(GospelApplication.FLUTTER_ENGINE_ID)

        // Initialize bridge with Flutter engine
        if (flutterEngine != null) {
            FlutterBridge.initialize(flutterEngine)
        }

        setContent {
            GospelWisdomTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    GospelApp()
                }
            }
        }
    }
}
