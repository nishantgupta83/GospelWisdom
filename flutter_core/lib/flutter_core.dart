// flutter_core/lib/flutter_core.dart
//
// Gospel Wisdom - Headless Flutter Module
// This module provides business logic for native iOS (SwiftUI) and Android (Compose) apps
//
// NO UI WIDGETS IN THIS MODULE - Native apps handle all UI

library flutter_core;

// Bridge API (main entry point for native apps)
export 'bridge/gospel_bridge.dart';

// Use Cases (stable API surface)
export 'usecases/app_config_usecase.dart';
export 'usecases/auth_usecase.dart';
export 'usecases/books_usecase.dart';
export 'usecases/bookmarks_usecase.dart';
export 'usecases/chapters_usecase.dart';
export 'usecases/daily_verse_usecase.dart';
export 'usecases/journal_usecase.dart';
export 'usecases/scenarios_usecase.dart';
export 'usecases/verses_usecase.dart';

// Note: Services and Models will be exported after migration from main app
// export 'services/...';
// export 'models/...';
