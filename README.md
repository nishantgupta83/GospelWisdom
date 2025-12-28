# Gospel Wisdom

A spiritual guidance app delivering Gospel-based wisdom for modern life challenges. Built with a **native-first architecture** using SwiftUI (iOS) and Jetpack Compose (Android), powered by a shared Flutter business logic layer.

## Architecture Overview

```
┌─────────────────────────┐     ┌─────────────────────────┐
│    iOS App (SwiftUI)    │     │  Android App (Compose)  │
│    - Native UI/UX       │     │    - Material 3 UI      │
│    - iOS 16+            │     │    - SDK 26+            │
│    - SF Symbols         │     │    - Dynamic Colors     │
└───────────┬─────────────┘     └───────────┬─────────────┘
            │                               │
            │     MethodChannel Bridge      │
            │                               │
            └───────────────┬───────────────┘
                            ▼
            ┌───────────────────────────────┐
            │    flutter_core (Dart)        │
            │    - Supabase Backend         │
            │    - Authentication           │
            │    - Local Caching (Hive)     │
            │    - Business Logic           │
            │    - NO UI CODE               │
            └───────────────────────────────┘
```

## Repository Structure

```
GospelWisdom/
├── flutter_core/           # Headless Flutter module
│   ├── lib/
│   │   ├── bridge/         # MethodChannel handlers
│   │   ├── usecases/       # Business logic API
│   │   ├── models/         # Data models
│   │   └── services/       # Backend services
│   └── pubspec.yaml
│
├── ios_app/                # Native SwiftUI application
│   ├── App/                # App entry point
│   ├── Bridge/             # Flutter integration
│   ├── Features/           # Screen modules
│   │   ├── Home/
│   │   ├── Chapters/
│   │   ├── Scenarios/
│   │   ├── Journal/
│   │   └── Settings/
│   └── Models/             # Swift data models
│
├── android_app/            # Native Jetpack Compose application
│   ├── app/src/main/
│   │   ├── java/.../
│   │   │   ├── app/        # Application & Activity
│   │   │   ├── bridge/     # Flutter integration
│   │   │   ├── features/   # Screen composables
│   │   │   └── ui/theme/   # Material 3 theming
│   │   └── res/            # Android resources
│   ├── build.gradle.kts
│   └── settings.gradle.kts
│
└── lib/                    # Legacy Flutter UI (migration source)
```

## Key Features

### Spiritual Content
- **Gospel Chapters**: Complete coverage of Matthew, Mark, Luke, and John
- **Daily Verse**: Curated daily inspiration with reflection prompts
- **Life Scenarios**: Real-world dilemmas with Gospel-based guidance
- **Personal Journal**: Private reflection space with ratings

### Technical Highlights
- **Native Performance**: Platform-optimized UI rendering
- **Offline First**: Hive-based local caching
- **Secure Auth**: Google, Apple, and email authentication via Supabase
- **Privacy Focused**: AES-256 encryption for sensitive data

## Technology Stack

| Layer | iOS | Android | Shared |
|-------|-----|---------|--------|
| **UI** | SwiftUI | Jetpack Compose | - |
| **Navigation** | NavigationStack | NavHost | - |
| **Theming** | SF Symbols | Material 3 | - |
| **Bridge** | FlutterMethodChannel | MethodChannel | MethodChannel |
| **Backend** | - | - | Supabase |
| **Storage** | - | - | Hive |
| **Auth** | - | - | Supabase Auth |

## Bridge API

The native apps communicate with Flutter through a typed MethodChannel interface:

```swift
// iOS (Swift)
let verse = try await FlutterBridge.shared.getDailyVerse()
let scenarios = try await FlutterBridge.shared.listScenarios(page: 1, limit: 20)
```

```kotlin
// Android (Kotlin)
val verse = FlutterBridge.getDailyVerse()
val scenarios = FlutterBridge.listScenarios(page = 1, limit = 20)
```

### Available Methods

| Category | Methods |
|----------|---------|
| **Content** | `getDailyVerse`, `listBooks`, `listChapters`, `listVerses` |
| **Scenarios** | `listScenarios`, `getScenarioDetail`, `searchScenarios` |
| **User Data** | `bookmarkAdd`, `bookmarkRemove`, `bookmarkList` |
| **Journal** | `journalList`, `journalUpsert`, `journalDelete` |
| **Auth** | `signInGoogle`, `signInApple`, `signOut`, `getAuthState` |

## Getting Started

### Prerequisites

```bash
# Flutter SDK
flutter --version  # >= 3.2.0

# iOS Development
xcode-select --version  # Xcode 15+

# Android Development
# Android Studio Hedgehog+ with SDK 35
```

### Setup

```bash
# Clone repository
git clone https://github.com/nishantgupta83/GospelWisdom.git
cd GospelWisdom

# Install Flutter dependencies
cd flutter_core && flutter pub get && cd ..

# iOS Setup
cd ios_app
# Open in Xcode, configure signing

# Android Setup
cd android_app
cp local.properties.template local.properties
# Update SDK paths in local.properties
```

### Running

```bash
# Flutter Core (for development)
cd flutter_core && flutter run

# iOS App
open ios_app/GospelWisdom.xcodeproj
# Run from Xcode

# Android App
cd android_app && ./gradlew installDebug
```

## Environment Configuration

Create `.env.development` in the project root:

```bash
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_ANON_KEY=your-anon-key
APP_ENV=development
```

## Development

### Adding a New Bridge Method

1. **Flutter Core** (`flutter_core/lib/bridge/gospel_bridge.dart`):
```dart
case 'newMethod':
  return _toJson(await _newUseCase().execute(call.arguments));
```

2. **iOS** (`ios_app/Bridge/FlutterBridge.swift`):
```swift
func newMethod(args: [String: Any]) async throws -> Response {
    return try await invoke("newMethod", arguments: args)
}
```

3. **Android** (`android_app/.../bridge/FlutterBridge.kt`):
```kotlin
suspend fun newMethod(args: Map<String, Any?>): String {
    return invokeMethod("newMethod", args)
}
```

### Code Style

- **Swift**: SwiftLint with default configuration
- **Kotlin**: ktlint with Android Kotlin style guide
- **Dart**: `flutter analyze` with strict mode

## Testing

```bash
# Flutter Core unit tests
cd flutter_core && flutter test

# iOS tests
cd ios_app && xcodebuild test -scheme GospelWisdom

# Android tests
cd android_app && ./gradlew test
```

## Build & Release

### iOS

```bash
cd ios_app
xcodebuild -scheme GospelWisdom -configuration Release archive
```

### Android

```bash
cd android_app
./gradlew bundleRelease  # AAB for Play Store
./gradlew assembleRelease  # APK for direct distribution
```

## Security

- **Credentials**: Never committed; loaded via `--dart-define` or `.env`
- **Keystore**: Android signing keys in secure storage (not in repo)
- **Certificates**: iOS provisioning profiles managed via Xcode
- **User Data**: AES-256 encrypted journal entries
- **Auth Tokens**: Stored in platform-specific secure storage

## Platform Requirements

| Platform | Minimum | Target |
|----------|---------|--------|
| iOS | 16.0 | 18.0 |
| Android | SDK 26 (8.0) | SDK 35 (15) |

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'feat: Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Commit Convention

We use [Conventional Commits](https://www.conventionalcommits.org/):

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation
- `refactor:` Code refactoring
- `test:` Adding tests
- `chore:` Maintenance

## License

Proprietary. All rights reserved.

Copyright 2024-2025 Hub4Apps

## Contact

- **Repository**: https://github.com/nishantgupta83/GospelWisdom
- **Issues**: https://github.com/nishantgupta83/GospelWisdom/issues

---

*Built with native platform excellence, powered by shared business logic.*
