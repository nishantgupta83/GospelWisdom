// android_app/app/src/main/java/com/hub4apps/gospel/app/GospelApp.kt

package com.hub4apps.gospel.app

import androidx.compose.foundation.layout.padding
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Lightbulb
import androidx.compose.material.icons.filled.MoreHoriz
import androidx.compose.material.icons.filled.Note
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.navigation.NavHostController
import androidx.navigation.compose.NavHost
import androidx.navigation.compose.composable
import androidx.navigation.compose.currentBackStackEntryAsState
import androidx.navigation.compose.rememberNavController
import com.hub4apps.gospel.features.chapters.ChaptersScreen
import com.hub4apps.gospel.features.home.HomeScreen
import com.hub4apps.gospel.features.journal.JournalScreen
import com.hub4apps.gospel.features.scenarios.ScenariosScreen
import com.hub4apps.gospel.features.settings.SettingsScreen

/**
 * Main App composable with bottom navigation
 */
@Composable
fun GospelApp() {
    val navController = rememberNavController()

    Scaffold(
        bottomBar = {
            GospelBottomNavigation(navController = navController)
        }
    ) { paddingValues ->
        NavHost(
            navController = navController,
            startDestination = Screen.Home.route,
            modifier = Modifier.padding(paddingValues)
        ) {
            composable(Screen.Home.route) {
                HomeScreen()
            }
            composable(Screen.Chapters.route) {
                ChaptersScreen()
            }
            composable(Screen.Scenarios.route) {
                ScenariosScreen()
            }
            composable(Screen.Journal.route) {
                JournalScreen()
            }
            composable(Screen.Settings.route) {
                SettingsScreen()
            }
        }
    }
}

/**
 * Bottom Navigation Bar
 */
@Composable
fun GospelBottomNavigation(navController: NavHostController) {
    val items = listOf(
        Screen.Home,
        Screen.Chapters,
        Screen.Scenarios,
        Screen.Journal,
        Screen.Settings
    )

    NavigationBar {
        val navBackStackEntry by navController.currentBackStackEntryAsState()
        val currentRoute = navBackStackEntry?.destination?.route

        items.forEach { screen ->
            NavigationBarItem(
                icon = { Icon(screen.icon, contentDescription = screen.title) },
                label = { Text(screen.title) },
                selected = currentRoute == screen.route,
                onClick = {
                    navController.navigate(screen.route) {
                        popUpTo(navController.graph.startDestinationId) {
                            saveState = true
                        }
                        launchSingleTop = true
                        restoreState = true
                    }
                }
            )
        }
    }
}

/**
 * Screen definitions for navigation
 */
sealed class Screen(val route: String, val title: String, val icon: ImageVector) {
    object Home : Screen("home", "Home", Icons.Default.Home)
    object Chapters : Screen("chapters", "Chapters", Icons.Default.Book)
    object Scenarios : Screen("scenarios", "Dilemmas", Icons.Default.Lightbulb)
    object Journal : Screen("journal", "Journal", Icons.Default.Note)
    object Settings : Screen("settings", "More", Icons.Default.MoreHoriz)
}
