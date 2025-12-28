// android_app/app/src/main/java/com/hub4apps/gospel/features/chapters/ChaptersScreen.kt

package com.hub4apps.gospel.features.chapters

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Book
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ChaptersScreen() {
    // Placeholder data - will be loaded from Flutter bridge
    val books = listOf(
        BookItem("1", "Matthew", 28),
        BookItem("2", "Mark", 16),
        BookItem("3", "Luke", 24),
        BookItem("4", "John", 21)
    )

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Gospel Books") }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            items(books) { book ->
                BookSection(book = book)
            }
        }
    }
}

data class BookItem(
    val id: String,
    val name: String,
    val chapterCount: Int
)

@Composable
fun BookSection(book: BookItem) {
    Column(modifier = Modifier.fillMaxWidth()) {
        // Book Header
        ListItem(
            headlineContent = {
                Text(
                    book.name,
                    style = MaterialTheme.typography.titleMedium
                )
            },
            supportingContent = {
                Text("${book.chapterCount} chapters")
            },
            leadingContent = {
                Icon(
                    Icons.Default.Book,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary
                )
            }
        )

        // Chapter list (placeholder)
        Column(modifier = Modifier.padding(start = 56.dp)) {
            repeat(minOf(3, book.chapterCount)) { index ->
                ChapterRow(
                    chapterNumber = index + 1,
                    bookName = book.name
                )
            }

            if (book.chapterCount > 3) {
                TextButton(
                    onClick = { /* Show all chapters */ }
                ) {
                    Text("Show all ${book.chapterCount} chapters")
                }
            }
        }

        HorizontalDivider()
    }
}

@Composable
fun ChapterRow(chapterNumber: Int, bookName: String) {
    ListItem(
        headlineContent = {
            Text("Chapter $chapterNumber")
        },
        supportingContent = {
            Text("Tap to read", color = MaterialTheme.colorScheme.onSurfaceVariant)
        },
        modifier = Modifier.padding(start = 16.dp)
    )
}
