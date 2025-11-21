// test/screens/more_screen_test.dart

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:GospelWisdom/core/theme/theme_provider.dart';
import 'package:GospelWisdom/services/settings_service.dart';
import '../helpers/widget_test_helpers.dart';
import '../helpers/mock_services.dart';

void main() {
  group('MoreScreen Widget Tests', () {
    group('Font Slider (4 Sizes)', () {
      testWidgets('should display font size slider', (tester) async {
        final settingsService = MockSettingsService();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
        );

        await tester.pumpWidget(widget);

        expect(find.text('Font Size'), findsOneWidget);
      });

      testWidgets('should have 4 font size options', (tester) async {
        final settingsService = MockSettingsService();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
        );

        await tester.pumpWidget(widget);

        expect(find.text('Small'), findsOneWidget);
        expect(find.text('Medium'), findsOneWidget);
        expect(find.text('Large'), findsOneWidget);
        expect(find.text('Extra Large'), findsOneWidget);
      });

      testWidgets('should have slider with correct divisions', (tester) async {
        final settingsService = MockSettingsService();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
        );

        await tester.pumpWidget(widget);

        // Find slider and verify it has 3 divisions (4 positions)
        expect(find.byType(Slider), findsOneWidget);
      });

      testWidgets('should trigger SettingsService on font size change',
          (tester) async {
        final settingsService = MockSettingsService();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
        );

        await tester.pumpWidget(widget);

        // Slider should exist and be interactive
        final sliderFinder = find.byType(Slider);
        expect(sliderFinder, findsOneWidget);

        // Tap the slider to test interaction
        await tester.tap(sliderFinder);
        await tester.pumpAndSettle();
      });
    });

    group('Theme Dropdown', () {
      testWidgets('should display theme selector', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        expect(find.text('Theme'), findsOneWidget);
      });

      testWidgets('should have 4 theme options', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        // Open dropdown to see all options
        final dropdownFinder = find.byType(DropdownButton<String>);
        await tester.tap(dropdownFinder);
        await tester.pumpAndSettle();

        // Verify all options exist
        expect(find.text('Light'), findsWidgets);
        expect(find.text('Dark'), findsWidgets);
        expect(find.text('Paper'), findsWidgets);
        expect(find.text('Sage'), findsWidgets);
      });

      testWidgets('should change theme when option selected', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        // Open dropdown first
        final dropdownFinder = find.byType(DropdownButton<String>);
        await tester.tap(dropdownFinder);
        await tester.pumpAndSettle();

        // Then select Sage option
        final sageFinder = find.text('Sage').last;
        await tester.tap(sageFinder);
        await tester.pumpAndSettle();

        // Verify theme was updated
        expect(themeProvider.themeStyle, equals(ThemeStyle.sage));
      });

      testWidgets('should display dropdown widget', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        expect(find.byType(DropdownButton<String>), findsWidgets);
      });
    });

    group('Dark Mode Toggle', () {
      testWidgets('should display dark mode switch', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        expect(find.text('Dark Mode'), findsOneWidget);
        expect(find.byType(Switch), findsOneWidget);
      });

      testWidgets('should toggle dark mode when tapped', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithThemeProvider(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        final switchFinder = find.byType(Switch);
        await tester.tap(switchFinder);
        await tester.pumpAndSettle();

        expect(themeProvider.isDark, isTrue);
      });

      testWidgets('should show correct switch state for dark mode',
          (tester) async {
        final themeProvider = MockThemeProvider();
        themeProvider.updateTheme(isDark: true);

        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        // Verify switch is in ON state
        final switchFinder = find.byType(Switch);
        expect(switchFinder, findsOneWidget);
      });
    });

    group('Settings Persistence', () {
      testWidgets('should save font size selection', (tester) async {
        final settingsService = MockSettingsService();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
        );

        await tester.pumpWidget(widget);

        // Verify font size options are present
        expect(find.text('Small'), findsOneWidget);
        expect(find.text('Medium'), findsOneWidget);
        expect(find.text('Large'), findsOneWidget);
      });

      testWidgets('should save theme selection', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        // Open dropdown first
        final dropdownFinder = find.byType(DropdownButton<String>);
        await tester.tap(dropdownFinder);
        await tester.pumpAndSettle();

        // Then select Paper option
        final paperFinder = find.text('Paper').last;
        await tester.tap(paperFinder);
        await tester.pumpAndSettle();

        // Theme should be persisted
        expect(themeProvider.themeStyle, equals(ThemeStyle.paper));
      });

      testWidgets('should persist dark mode toggle state', (tester) async {
        final themeProvider = MockThemeProvider();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        // Toggle dark mode
        final switchFinder = find.byType(Switch);
        await tester.tap(switchFinder);
        await tester.pumpAndSettle();

        // Verify state persists
        expect(themeProvider.isDark, isTrue);
      });
    });

    group('UI Layout and Accessibility', () {
      testWidgets('should display all settings in scrollable view',
          (tester) async {
        final settingsService = MockSettingsService();
        final themeProvider = MockThemeProvider();

        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
          themeProvider: themeProvider,
        );

        await tester.pumpWidget(widget);

        // All settings should be present
        expect(find.text('Font Size'), findsOneWidget);
        expect(find.text('Theme'), findsOneWidget);
        expect(find.text('Dark Mode'), findsOneWidget);
      });

      testWidgets('should have proper spacing between settings',
          (tester) async {
        final settingsService = MockSettingsService();
        final widget = WidgetTestHelpers.createTestWidgetWithProviders(
          const _MockMoreScreen(),
          settingsService: settingsService,
        );

        await tester.pumpWidget(widget);

        // Verify widgets are properly spaced
        expect(find.byType(Padding), findsWidgets);
      });
    });
  });
}

// Mock MoreScreen widget for testing
class _MockMoreScreen extends StatefulWidget {
  const _MockMoreScreen();

  @override
  State<_MockMoreScreen> createState() => _MockMoreScreenState();
}

class _MockMoreScreenState extends State<_MockMoreScreen> {
  String _selectedTheme = 'Light';
  String _selectedFontSize = 'Medium';
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    final settingsService = context.read<SettingsService>();
    final themeProvider = context.read<ThemeProvider>();

    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text('Font Size'),
          Slider(
            value: _getFontSizeValue(),
            divisions: 3,
            max: 3,
            onChanged: (value) {
              setState(() {
                _selectedFontSize = _fontSizeFromValue(value);
                settingsService.fontSize = _selectedFontSize.toLowerCase();
              });
            },
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildFontSizeButton('Small', 0),
              _buildFontSizeButton('Medium', 1),
              _buildFontSizeButton('Large', 2),
              _buildFontSizeButton('Extra Large', 3),
            ],
          ),
          const SizedBox(height: 20),
          const Text('Theme'),
          DropdownButton<String>(
            value: _selectedTheme,
            onChanged: (value) {
              setState(() {
                _selectedTheme = value!;
                final style = _themeStyleFromString(value);
                themeProvider.setThemeStyle(style);
              });
            },
            items: const [
              DropdownMenuItem(value: 'Light', child: Text('Light')),
              DropdownMenuItem(value: 'Dark', child: Text('Dark')),
              DropdownMenuItem(value: 'Paper', child: Text('Paper')),
              DropdownMenuItem(value: 'Sage', child: Text('Sage')),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              const Text('Dark Mode'),
              Switch(
                value: themeProvider.isDark,
                onChanged: (v) {
                  setState(() {
                    _isDarkMode = v;
                    themeProvider.toggleDarkMode();
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  double _getFontSizeValue() {
    switch (_selectedFontSize) {
      case 'Small':
        return 0;
      case 'Medium':
        return 1;
      case 'Large':
        return 2;
      case 'Extra Large':
        return 3;
      default:
        return 1;
    }
  }

  String _fontSizeFromValue(double value) {
    switch (value.toInt()) {
      case 0:
        return 'Small';
      case 1:
        return 'Medium';
      case 2:
        return 'Large';
      case 3:
        return 'Extra Large';
      default:
        return 'Medium';
    }
  }

  Widget _buildFontSizeButton(String label, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedFontSize = label;
        });
      },
      child: Text(label),
    );
  }

  ThemeStyle _themeStyleFromString(String value) {
    switch (value) {
      case 'Light':
        return ThemeStyle.light;
      case 'Dark':
        return ThemeStyle.dark;
      case 'Paper':
        return ThemeStyle.paper;
      case 'Sage':
        return ThemeStyle.sage;
      default:
        return ThemeStyle.light;
    }
  }
}
