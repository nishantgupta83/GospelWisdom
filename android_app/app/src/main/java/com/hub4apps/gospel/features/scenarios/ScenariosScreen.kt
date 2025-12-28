// android_app/app/src/main/java/com/hub4apps/gospel/features/scenarios/ScenariosScreen.kt

package com.hub4apps.gospel.features.scenarios

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ScenariosScreen() {
    var searchQuery by remember { mutableStateOf("") }

    // Placeholder scenarios
    val scenarios = listOf(
        ScenarioItem(
            id = "1",
            title = "Workplace Dilemma",
            description = "When you're asked to do something that conflicts with your values...",
            tags = listOf("work", "ethics")
        ),
        ScenarioItem(
            id = "2",
            title = "Family Conflict",
            description = "Dealing with disagreements while maintaining love and respect...",
            tags = listOf("family", "relationships")
        ),
        ScenarioItem(
            id = "3",
            title = "Financial Decisions",
            description = "Balancing generosity with responsibility...",
            tags = listOf("money", "stewardship")
        )
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Life Dilemmas") }
            )
        }
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // Search Bar
            OutlinedTextField(
                value = searchQuery,
                onValueChange = { searchQuery = it },
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                placeholder = { Text("Search dilemmas...") },
                leadingIcon = {
                    Icon(Icons.Default.Search, contentDescription = null)
                },
                singleLine = true
            )

            // Scenarios List
            LazyColumn(
                contentPadding = PaddingValues(horizontal = 16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                items(scenarios) { scenario ->
                    ScenarioCard(scenario = scenario)
                }
            }
        }
    }
}

data class ScenarioItem(
    val id: String,
    val title: String,
    val description: String,
    val tags: List<String>
)

@Composable
fun ScenarioCard(scenario: ScenarioItem) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        onClick = { /* Navigate to detail */ }
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                scenario.title,
                style = MaterialTheme.typography.titleMedium
            )

            Spacer(Modifier.height(8.dp))

            Text(
                scenario.description,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                maxLines = 2
            )

            Spacer(Modifier.height(8.dp))

            Row(
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                scenario.tags.forEach { tag ->
                    AssistChip(
                        onClick = { },
                        label = { Text(tag) }
                    )
                }
            }
        }
    }
}
