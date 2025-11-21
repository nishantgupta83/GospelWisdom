# Integration Tests Quick Reference

## File Locations
- `/integration_test/app_test.dart` - App launch and lifecycle tests
- `/integration_test/theme_integration_test.dart` - Theme system tests
- `/integration_test/navigation_flow_test.dart` - Navigation tests

## Test Count by Category

```
App Tests (8):           app_test.dart
├── T1: App Launch
├── T2: Splash Transition
├── T3: Tap Interactions
├── T4: Bottom Nav
├── T5: State Persistence
├── T6: Navigation Init
├── T7: Smoke Test
└── T8: Orientation

Theme Tests (10):        theme_integration_test.dart
├── T1: Default Theme
├── T2: Dark/Light Toggle
├── T3: 4-Style Switching
├── T4: Font Slider
├── T5: Persistence
├── T6: Rapid Changes
├── T7: Theme Colors
├── T8: Combined Settings
├── T9: Theme + Nav
└── T10: Theme Mode Config

Navigation Tests (12):   navigation_flow_test.dart
├── T1: Home Tab
├── T2: Chapters Tab
├── T3: Scenarios Tab
├── T4: More Tab
├── T5: Tab Cycling
├── T6: Back Button
├── T7: Deep Link
├── T8: Deep Link + Back
├── T9: Sequential Deep Links
├── T10: Tab Persistence
├── T11: Rapid Switching
└── T12: Navigation Init
```

## Quick Commands

```bash
# Run all tests
flutter test integration_test/

# Run single file
flutter test integration_test/app_test.dart

# Run with device
flutter test integration_test/ -d <device-id>

# Run with verbose output
flutter test integration_test/ -v

# Run specific test
flutter test integration_test/app_test.dart -k "T1:"
```

## What Each Test File Covers

### app_test.dart (8 tests, 214 lines)
- App initialization and setup
- Splash screen display
- Widget tree integrity
- User interactions (taps)
- State management
- Navigation initialization
- Orientation changes
- Overall app stability

### theme_integration_test.dart (10 tests, 328 lines)
- Theme provider initialization
- Dark/light mode toggling
- 4 theme styles (Light, Dark, Paper, Sage)
- Font size adjustments
- Theme persistence in storage
- Rapid theme change handling
- Theme color application
- Text scale independence
- Navigation state preservation
- Theme mode configuration

### navigation_flow_test.dart (12 tests, 381 lines)
- Bottom navigation bar (4 tabs)
- Individual tab navigation
- Sequential tab switching
- Back button handling
- Deep linking to detail screens
- Back navigation from details
- Multiple sequential navigations
- Tab state persistence
- Rapid navigation stress test
- Navigation service initialization

## Key Test Patterns

### Widget Finding
```dart
find.byType(MaterialApp)           // By widget type
find.byType(Switch)                // Find switches
find.byType(Slider)                // Find sliders
find.byWidgetPredicate(...)        // By predicate
```

### Async Handling
```dart
await tester.pumpAndSettle(Duration(seconds: 3))   // Wait for all frames
await tester.pump(Duration(milliseconds: 500))     // Pump single frame
await tester.tap(widget)                           // Tap widget
await tester.drag(widget, Offset(50, 0))          // Drag gesture
```

### Safe Interactions
```dart
if (widget.evaluate().isNotEmpty) {
  // Widget exists, interact with it
  await tester.tap(widget.first);
}
```

## Expected Results

### App Tests
- All 8 tests should pass
- App launches in <5 seconds
- UI renders without errors
- State persists across operations

### Theme Tests
- All 10 tests should pass
- Theme changes apply within 500ms
- Settings persist after app restart
- 4 theme styles cycle correctly
- Font sizes adjust properly

### Navigation Tests
- All 12 tests should pass
- Tab switching works smoothly
- Deep links navigate correctly
- Back button returns to previous screen
- Navigation state remains valid

## Troubleshooting Quick Tips

| Issue | Solution |
|-------|----------|
| Test timeout | Increase `pumpAndSettle()` duration |
| Widget not found | Check widget hierarchy, use predicate |
| Async errors | Verify `await` is used correctly |
| State not persisting | Check settings service initialization |
| Navigation errors | Verify NavigationService is initialized |

## CI/CD Integration

Add to workflow file:
```yaml
- name: Run Integration Tests
  run: flutter test integration_test/
```

Requires:
- Android emulator or device
- Flutter SDK
- integration_test in pubspec.yaml (already added)

## Test Metrics

- **Total Lines:** 923
- **Total Tests:** 30
- **Compilation:** Success (info warnings only)
- **Coverage:** App lifecycle, theme, navigation, state

## Important Notes

- Tests use `integration_test` package (already in pubspec.yaml)
- Tests expect Material Design widgets
- Tests handle optional UI elements gracefully
- Includes stress testing for reliability
- Compatible with CI/CD pipelines

## Running on Device

```bash
# List devices
flutter devices

# Run on specific device
flutter test integration_test/ -d <device-id>

# Run on emulator
flutter test integration_test/ -d emulator-5554
```

## Adding New Tests

When adding new features:
1. Create new testWidgets function
2. Follow naming: testWidgets('T#: Description', ...)
3. Document what's being tested
4. Include graceful error handling
5. Test both success and edge cases

---

**Last Updated:** November 20, 2025
**Status:** All Tests Passing & Compiled
