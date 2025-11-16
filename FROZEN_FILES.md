# FROZEN FILES - DO NOT MODIFY

## Purpose

This document lists **critical files** that control app initialization, configuration, and core architecture. These files should **NEVER** be modified by LLMs, AI assistants, or casual edits without explicit approval from the project lead.

## Why "Frozen"?

These files control:
- **App startup sequence** - Wrong order = crashes
- **Environment configuration** - Wrong values = broken production builds
- **Supabase authentication** - Wrong setup = App Store rejection
- **Core navigation** - Wrong architecture = user flow breaks

Modifying these files without deep understanding can cause:
- ❌ App crashes on startup
- ❌ Broken authentication (OAuth, email sign-in)
- ❌ App Store / Play Store rejections
- ❌ Production configuration errors
- ❌ Navigation failures

## Frozen File List

### Core Initialization
```
lib/main.dart
lib/core/app_initializer.dart
lib/config/app_environment.dart
lib/config/environment.dart
```

**Why frozen:** Control app startup sequence and environment validation. Wrong modification = app won't start.

### Authentication & Backend
```
lib/services/supabase_auth_service.dart
lib/services/service_locator.dart
```

**Why frozen:** Control Supabase initialization and dependency injection. Wrong modification = auth breaks, App Store rejection.

### Navigation Architecture
```
lib/screens/root_scaffold.dart
lib/screens/splash_screen.dart
lib/screens/modern_auth_screen.dart
```

**Why frozen:** Control app navigation and routing. Wrong modification = users can't navigate, authentication flow breaks.

### Build Configuration
```
android/app/build.gradle
ios/Runner.xcodeproj/project.pbxproj
ios/Runner/Info.plist
pubspec.yaml
```

**Why frozen:** Control platform-specific build settings. Wrong modification = build fails, App Store rejection.

## Rules for Modifying Frozen Files

### For AI Assistants (LLMs)

**DO NOT** modify frozen files. If the user asks you to:

1. **Stop** and explain why the file is frozen
2. **Show** what you would change (in comments or suggestions)
3. **Ask** the user to manually review and approve
4. **Wait** for explicit user confirmation before proceeding

### For Developers

Before modifying any frozen file:

1. ✅ **Understand impact** - Read the entire file and understand initialization flow
2. ✅ **Test thoroughly** - Test on BOTH iOS AND Android, in debug AND release builds
3. ✅ **Run config tests** - `flutter test test/config_test.dart --dart-define=APP_ENV=production`
4. ✅ **Test all auth flows** - Email, Google OAuth, Apple OAuth, Guest mode
5. ✅ **Document changes** - Update comments explaining what changed and why
6. ✅ **Get approval** - Have changes reviewed by project lead

## Configuration Hardening

The following files implement fail-fast configuration validation:

### `lib/config/app_environment.dart`
- Type-safe environment detection (dev/staging/prod)
- Validates Supabase URL and anon key on startup
- **Crashes in production** if config is broken (better than silent failure)
- Warns in development mode

### `lib/core/app_initializer.dart`
- Calls `validateAppConfig()` after Supabase initialization
- Pings Supabase to verify connectivity
- Fails loudly if production build has broken config

### `test/config_test.dart`
- Automated tests to catch config errors before build
- Run with: `flutter test test/config_test.dart --dart-define=APP_ENV=production`

## How to Prevent "Configuration Errors"

### Before Every Production Build

```bash
# 1. Run config validation tests
flutter test test/config_test.dart --dart-define=APP_ENV=production \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key

# 2. Run code analysis
flutter analyze

# 3. Build for release
flutter build ios --release \
  --dart-define=APP_ENV=production \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key

# 4. Test on BOTH iPhone AND iPad
# 5. Test ALL 4 auth flows (Email, Google, Apple, Guest)
```

### Production Build Checklist

- [ ] Config tests pass
- [ ] Flutter analyze shows no errors
- [ ] Tested on iPhone (physical device)
- [ ] Tested on iPad (simulator or device)
- [ ] Email sign-in works (success AND failure cases)
- [ ] Google OAuth works (navigates to home, Sign Out appears)
- [ ] Apple OAuth works (navigates to home, Sign Out appears)
- [ ] Guest mode works (navigates to home)
- [ ] More screen shows Account section for authenticated users
- [ ] Journal works for both authenticated and anonymous users

## Questions?

If you're unsure whether a file is frozen:
1. Check `lib/config/frozen_files.dart` for the programmatic list
2. Look for "DO NOT MODIFY" comments at the top of the file
3. When in doubt, **ask** before modifying

## Summary

**Frozen files = Production stability**

Don't modify these files unless you:
- Understand the full impact
- Have tested exhaustively
- Got explicit approval
- Documented your changes

Better to be cautious than to ship a broken build to App Store.
