// android_app/app/src/main/java/com/hub4apps/gospel/features/home/HomeScreen.kt

package com.hub4apps.gospel.features.home

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontStyle
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import androidx.lifecycle.viewmodel.compose.viewModel
import com.hub4apps.gospel.bridge.FlutterBridge
import kotlinx.coroutines.launch
import kotlinx.serialization.Serializable
import kotlinx.serialization.json.Json

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun HomeScreen(viewModel: HomeViewModel = viewModel()) {
    val uiState by viewModel.uiState.collectAsState()

    LaunchedEffect(Unit) {
        viewModel.loadData()
    }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Gospel Wisdom") }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Daily Verse Card
            item {
                DailyVerseCard(
                    verseText = uiState.dailyVerseText,
                    verseReference = uiState.dailyVerseReference,
                    isLoading = uiState.isLoading
                )
            }

            // Quick Actions Grid
            item {
                Text(
                    "Explore",
                    style = MaterialTheme.typography.titleMedium,
                    modifier = Modifier.padding(top = 8.dp)
                )
            }

            item {
                QuickActionsGrid()
            }
        }
    }
}

@Composable
fun DailyVerseCard(
    verseText: String,
    verseReference: String,
    isLoading: Boolean
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    Icons.Default.WbSunny,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
                Spacer(Modifier.width(8.dp))
                Text(
                    "Verse of the Day",
                    style = MaterialTheme.typography.titleMedium
                )
            }

            Spacer(Modifier.height(12.dp))

            if (isLoading) {
                CircularProgressIndicator(
                    modifier = Modifier.align(Alignment.CenterHorizontally)
                )
            } else {
                Text(
                    verseText,
                    style = MaterialTheme.typography.bodyLarge,
                    fontStyle = FontStyle.Italic
                )

                Spacer(Modifier.height(8.dp))

                Text(
                    "— $verseReference",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onPrimaryContainer.copy(alpha = 0.7f)
                )
            }
        }
    }
}

@Composable
fun QuickActionsGrid() {
    val actions = listOf(
        QuickAction("Chapters", Icons.Default.Book, MaterialTheme.colorScheme.primary),
        QuickAction("Dilemmas", Icons.Default.Lightbulb, MaterialTheme.colorScheme.tertiary),
        QuickAction("Bookmarks", Icons.Default.Bookmark, MaterialTheme.colorScheme.secondary),
        QuickAction("Search", Icons.Default.Search, MaterialTheme.colorScheme.primary)
    )

    LazyVerticalGrid(
        columns = GridCells.Fixed(2),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp),
        modifier = Modifier.height(200.dp)
    ) {
        items(actions.size) { index ->
            QuickActionCard(action = actions[index])
        }
    }
}

data class QuickAction(
    val title: String,
    val icon: ImageVector,
    val color: androidx.compose.ui.graphics.Color
)

@Composable
fun QuickActionCard(action: QuickAction) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        onClick = { /* Navigate to action */ }
    ) {
        Column(
            modifier = Modifier
                .padding(16.dp)
                .fillMaxWidth(),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                action.icon,
                contentDescription = action.title,
                tint = action.color,
                modifier = Modifier.size(32.dp)
            )
            Spacer(Modifier.height(8.dp))
            Text(
                action.title,
                style = MaterialTheme.typography.labelMedium
            )
        }
    }
}

// ViewModel
class HomeViewModel : ViewModel() {
    private val _uiState = kotlinx.coroutines.flow.MutableStateFlow(HomeUiState())
    val uiState = _uiState

    fun loadData() {
        viewModelScope.launch {
            _uiState.value = _uiState.value.copy(isLoading = true)

            try {
                val jsonResponse = FlutterBridge.getDailyVerse()
                // Parse JSON response (simplified)
                // In production, use proper JSON parsing
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    dailyVerseText = "For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.",
                    dailyVerseReference = "John 3:16"
                )
            } catch (e: Exception) {
                _uiState.value = _uiState.value.copy(
                    isLoading = false,
                    error = e.message
                )
            }
        }
    }
}

data class HomeUiState(
    val isLoading: Boolean = false,
    val dailyVerseText: String = "",
    val dailyVerseReference: String = "",
    val error: String? = null
)
