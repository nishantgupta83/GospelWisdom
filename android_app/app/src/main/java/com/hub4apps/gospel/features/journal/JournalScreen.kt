// android_app/app/src/main/java/com/hub4apps/gospel/features/journal/JournalScreen.kt

package com.hub4apps.gospel.features.journal

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Star
import androidx.compose.material.icons.filled.StarBorder
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun JournalScreen() {
    var showNewEntryDialog by remember { mutableStateOf(false) }

    // Placeholder entries - will be loaded from Flutter bridge
    val entries = listOf<JournalEntryItem>() // Empty for now

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Reflections") }
            )
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { showNewEntryDialog = true }
            ) {
                Icon(Icons.Default.Add, contentDescription = "Add reflection")
            }
        }
    ) { paddingValues ->
        if (entries.isEmpty()) {
            // Empty State
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text(
                        "No Reflections Yet",
                        style = MaterialTheme.typography.titleLarge
                    )
                    Spacer(Modifier.height(8.dp))
                    Text(
                        "Tap the + button to create your first reflection",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        } else {
            LazyColumn(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(paddingValues),
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                items(entries) { entry ->
                    JournalEntryCard(entry = entry)
                }
            }
        }
    }

    // New Entry Dialog
    if (showNewEntryDialog) {
        NewJournalEntryDialog(
            onDismiss = { showNewEntryDialog = false },
            onSave = { /* Save entry */ showNewEntryDialog = false }
        )
    }
}

data class JournalEntryItem(
    val id: String,
    val content: String,
    val category: String,
    val rating: Int,
    val createdAt: String
)

@Composable
fun JournalEntryCard(entry: JournalEntryItem) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                AssistChip(
                    onClick = { },
                    label = { Text(entry.category) }
                )

                // Star Rating
                Row {
                    repeat(5) { index ->
                        Icon(
                            if (index < entry.rating) Icons.Default.Star else Icons.Default.StarBorder,
                            contentDescription = null,
                            tint = if (index < entry.rating)
                                MaterialTheme.colorScheme.primary
                            else
                                MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.3f),
                            modifier = Modifier.size(16.dp)
                        )
                    }
                }
            }

            Spacer(Modifier.height(8.dp))

            Text(
                entry.content,
                style = MaterialTheme.typography.bodyMedium,
                maxLines = 3
            )

            Spacer(Modifier.height(8.dp))

            Text(
                entry.createdAt,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun NewJournalEntryDialog(
    onDismiss: () -> Unit,
    onSave: (String, String, Int) -> Unit
) {
    var content by remember { mutableStateOf("") }
    var category by remember { mutableStateOf("General") }
    var rating by remember { mutableIntStateOf(0) }

    AlertDialog(
        onDismissRequest = onDismiss,
        title = { Text("New Reflection") },
        text = {
            Column {
                OutlinedTextField(
                    value = content,
                    onValueChange = { content = it },
                    label = { Text("Your reflection") },
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(150.dp),
                    maxLines = 6
                )

                Spacer(Modifier.height(16.dp))

                Text("Rating", style = MaterialTheme.typography.labelMedium)
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Center
                ) {
                    repeat(5) { index ->
                        IconButton(onClick = { rating = index + 1 }) {
                            Icon(
                                if (index < rating) Icons.Default.Star else Icons.Default.StarBorder,
                                contentDescription = null,
                                tint = if (index < rating)
                                    MaterialTheme.colorScheme.primary
                                else
                                    MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            }
        },
        confirmButton = {
            TextButton(
                onClick = { onSave(content, category, rating) },
                enabled = content.isNotBlank()
            ) {
                Text("Save")
            }
        },
        dismissButton = {
            TextButton(onClick = onDismiss) {
                Text("Cancel")
            }
        }
    )
}
