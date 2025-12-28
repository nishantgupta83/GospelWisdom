// android_app/app/src/main/java/com/hub4apps/gospel/features/settings/SettingsScreen.kt

package com.hub4apps.gospel.features.settings

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun SettingsScreen() {
    var isDarkMode by remember { mutableStateOf(false) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("More") }
            )
        }
    ) { paddingValues ->
        LazyColumn(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // Appearance Section
            item {
                SettingsSectionHeader("APPEARANCE")
            }

            item {
                SwitchSettingItem(
                    title = "Dark Mode",
                    checked = isDarkMode,
                    onCheckedChange = { isDarkMode = it },
                    icon = Icons.Default.DarkMode
                )
            }

            // Content Section
            item {
                SettingsSectionHeader("CONTENT")
            }

            item {
                ClickableSettingItem(
                    title = "Search",
                    subtitle = "Find life situations and wisdom",
                    icon = Icons.Default.Search,
                    onClick = { }
                )
            }

            item {
                ClickableSettingItem(
                    title = "Bookmarks",
                    icon = Icons.Default.Bookmark,
                    onClick = { }
                )
            }

            // Resources Section
            item {
                SettingsSectionHeader("RESOURCES")
            }

            item {
                ClickableSettingItem(
                    title = "About",
                    icon = Icons.Default.Info,
                    onClick = { }
                )
            }

            item {
                ClickableSettingItem(
                    title = "Privacy Policy",
                    icon = Icons.Default.PrivacyTip,
                    onClick = { }
                )
            }

            item {
                ClickableSettingItem(
                    title = "Terms of Service",
                    icon = Icons.Default.Article,
                    onClick = { }
                )
            }

            // Extras Section
            item {
                SettingsSectionHeader("EXTRAS")
            }

            item {
                ClickableSettingItem(
                    title = "Share This App",
                    icon = Icons.Default.Share,
                    onClick = { }
                )
            }

            item {
                ListItem(
                    headlineContent = { Text("App Version") },
                    trailingContent = {
                        Text(
                            "1.0.96",
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                )
            }
        }
    }
}

@Composable
fun SettingsSectionHeader(title: String) {
    Text(
        text = title,
        style = MaterialTheme.typography.labelMedium,
        color = MaterialTheme.colorScheme.primary,
        modifier = Modifier.padding(
            start = 16.dp,
            top = 24.dp,
            bottom = 8.dp
        )
    )
}

@Composable
fun SwitchSettingItem(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    icon: androidx.compose.ui.graphics.vector.ImageVector
) {
    ListItem(
        headlineContent = { Text(title) },
        leadingContent = {
            Icon(icon, contentDescription = null)
        },
        trailingContent = {
            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange
            )
        }
    )
}

@Composable
fun ClickableSettingItem(
    title: String,
    subtitle: String? = null,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    onClick: () -> Unit
) {
    ListItem(
        headlineContent = { Text(title) },
        supportingContent = subtitle?.let { { Text(it) } },
        leadingContent = {
            Icon(icon, contentDescription = null)
        },
        trailingContent = {
            Icon(
                Icons.Default.ChevronRight,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        },
        modifier = Modifier.clickable { onClick() }
    )
}
