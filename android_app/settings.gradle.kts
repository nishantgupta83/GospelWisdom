// android_app/settings.gradle.kts

pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "GospelWisdom"
include(":app")

// Include Flutter module
val flutterCoreDir = file("../flutter_core")
if (flutterCoreDir.exists()) {
    apply(from = "$flutterCoreDir/.android/include_flutter.groovy")
    include(":flutter_core")
    project(":flutter_core").projectDir = file("$flutterCoreDir/.android/Flutter")
}
