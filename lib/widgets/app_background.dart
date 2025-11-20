// lib/widgets/app_background.dart

import 'dart:io' show Platform;
import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../core/ios_performance_optimizer.dart';
import '../core/theme/theme_provider.dart';

/// App background widget - provides unified gradient backgrounds for all 4 theme styles
/// Replaces image-based backgrounds for better performance and smaller bundle size
class AppBackground extends StatelessWidget {
  final ThemeStyle? themeStyle;
  final bool isDark;
  final double opacity;
  final bool showAnimatedOrbs;
  final AnimationController? orbController;

  // ═══════════════════════════════════════════════════════════════════
  // GRADIENT COLORS (8 variants for 4 theme styles × light/dark)
  // ═══════════════════════════════════════════════════════════════════

  // Light Theme - Clean whites to light purples
  static const _lightGradientColors = [
    Color(0xFFF8FAFC), // Very light gray
    Color(0xFFE9DDFF), // Light purple tint
    Color(0xFFE2E8F0), // Light gray-blue
  ];

  // Dark Theme - Deep navy to steel blues
  static const _darkGradientColors = [
    Color(0xFF0D1B2A), // Deep navy
    Color(0xFF1B263B), // Navy blue
    Color(0xFF415A77), // Steel blue
  ];

  // Paper Theme Light - Cream to warm beige
  static const _paperLightGradientColors = [
    Color(0xFFFAF3E0), // Cream (matches paperLightBackground)
    Color(0xFFF5E6D3), // Aged paper (matches paperLightSurface)
    Color(0xFFE8D5B7), // Light tan
  ];

  // Paper Theme Dark - Deep brown to sepia
  static const _paperDarkGradientColors = [
    Color(0xFF2C1810), // Deep brown (matches paperDarkBackground)
    Color(0xFF3E2723), // Dark paper (matches paperDarkSurface)
    Color(0xFF4E342E), // Warm brown
  ];

  // Sage Theme Light - Soft green to sage
  static const _sageLightGradientColors = [
    Color(0xFFF1F8F4), // Soft green tint (matches sageLightBackground)
    Color(0xFFE8F5E9), // Very light green (matches sageLightSurface)
    Color(0xFFD4E7D7), // Light sage
  ];

  // Sage Theme Dark - Forest to deep green
  static const _sageDarkGradientColors = [
    Color(0xFF1B3A1F), // Dark forest (matches sageDarkBackground)
    Color(0xFF1B5E20), // Forest green (matches sageDarkSurface)
    Color(0xFF2E7D32), // Deep green
  ];

  // ═══════════════════════════════════════════════════════════════════
  // ORB COLORS (animated background accents)
  // ═══════════════════════════════════════════════════════════════════

  // Light Theme Orbs - Purple accents
  static const _orbColorLightPrimary = Color(0x1A6750A4); // Purple with alpha ~0.1
  static const _orbColorLightSecondary = Color(0x0D625B71); // Muted purple with alpha ~0.05

  // Dark Theme Orbs - Light purple accents
  static const _orbColorDarkPrimary = Color(0x1ACFBCFF); // Light purple with alpha ~0.1
  static const _orbColorDarkSecondary = Color(0x0DCBC2DB); // Muted light purple with alpha ~0.05

  // Paper Light Orbs - Warm brown accents
  static const _orbColorPaperLightPrimary = Color(0x1A8B6F47); // Warm brown with alpha ~0.1
  static const _orbColorPaperLightSecondary = Color(0x0D6D4C41); // Dark brown with alpha ~0.05

  // Paper Dark Orbs - Light brown accents
  static const _orbColorPaperDarkPrimary = Color(0x1AD7A86E); // Light brown with alpha ~0.1
  static const _orbColorPaperDarkSecondary = Color(0x0DBCAAA4); // Muted brown with alpha ~0.05

  // Sage Light Orbs - Sage green accents
  static const _orbColorSageLightPrimary = Color(0x1A6B8E6F); // Sage green with alpha ~0.1
  static const _orbColorSageLightSecondary = Color(0x0D558B2F); // Dark green with alpha ~0.05

  // Sage Dark Orbs - Light sage accents
  static const _orbColorSageDarkPrimary = Color(0x1AA5D6A7); // Light sage with alpha ~0.1
  static const _orbColorSageDarkSecondary = Color(0x0D9CCC65); // Muted green with alpha ~0.05

  const AppBackground({
    Key? key,
    required this.themeStyle,
    required this.isDark,
    this.opacity = 1.0,
    this.showAnimatedOrbs = false,
    this.orbController,
  }) : assert(
         !showAnimatedOrbs || orbController != null,
         'orbController must be provided when showAnimatedOrbs is true',
       ),
       super(key: key);

  /// Get gradient colors based on theme style and brightness
  List<Color> get _gradientColors {
    final style = themeStyle ?? (isDark ? ThemeStyle.dark : ThemeStyle.light);
    switch (style) {
      case ThemeStyle.light:
      case ThemeStyle.dark:
        return isDark ? _darkGradientColors : _lightGradientColors;
      case ThemeStyle.paper:
        return isDark ? _paperDarkGradientColors : _paperLightGradientColors;
      case ThemeStyle.sage:
        return isDark ? _sageDarkGradientColors : _sageLightGradientColors;
    }
  }

  /// Get orb colors based on theme style and brightness
  List<Color> get _orbColors {
    final style = themeStyle ?? (isDark ? ThemeStyle.dark : ThemeStyle.light);
    switch (style) {
      case ThemeStyle.light:
      case ThemeStyle.dark:
        return isDark
            ? [_orbColorDarkPrimary, _orbColorDarkSecondary]
            : [_orbColorLightPrimary, _orbColorLightSecondary];
      case ThemeStyle.paper:
        return isDark
            ? [_orbColorPaperDarkPrimary, _orbColorPaperDarkSecondary]
            : [_orbColorPaperLightPrimary, _orbColorPaperLightSecondary];
      case ThemeStyle.sage:
        return isDark
            ? [_orbColorSageDarkPrimary, _orbColorSageDarkSecondary]
            : [_orbColorSageLightPrimary, _orbColorSageLightSecondary];
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Positioned.fill(
      child: RepaintBoundary( // Isolate gradient repaints from parent widget tree
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: _gradientColors,
            ),
          ),
          child: showAnimatedOrbs && orbController != null
              ? RepaintBoundary(child: _buildAnimatedOrbs(size)) // Isolate orb animations
              : null,
        ),
      ),
    );
  }

  /// Build animated background orbs (only for home screen)
  /// Reduced from 5 to 3 orbs for 30-40% less animation overhead
  Widget _buildAnimatedOrbs(Size size) {
    return Stack(
      children: List.generate(3, (index) { // Reduced from 5 to 3 orbs
        return Positioned(
          top: (index * 150.0) % size.height,
          left: (index * 200.0) % size.width,
          child: (Platform.isIOS && IOSPerformanceOptimizer.instance.isProMotionDevice)
              ? _ThrottledAnimatedBuilder(
                  animation: orbController!,
                  targetFps: 60, // Cap at 60fps for battery savings on ProMotion (120Hz displays only)
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(
                        math.sin(orbController!.value * 2 * math.pi + index) * 20,
                        math.cos(orbController!.value * 2 * math.pi + index) * 30,
                      ),
                      child: Container(
                        width: 80 + (index * 20.0),
                        height: 80 + (index * 20.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: _orbColors,
                          ),
                        ),
                      ),
                    );
                  },
                )
              : AnimatedBuilder(
                  animation: orbController!,
                  builder: (context, child) {
                    return Transform.translate(
                      offset: Offset(
                        math.sin(orbController!.value * 2 * math.pi + index) * 20,
                        math.cos(orbController!.value * 2 * math.pi + index) * 30,
                      ),
                      child: Container(
                        width: 80 + (index * 20.0),
                        height: 80 + (index * 20.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: RadialGradient(
                            colors: _orbColors,
                          ),
                        ),
                      ),
                    );
                  },
                ),
        );
      }),
    );
  }
}

/// Throttled AnimatedBuilder that limits rebuild frequency for battery savings
/// Especially important on iOS ProMotion (120Hz) displays
class _ThrottledAnimatedBuilder extends StatefulWidget {
  final Animation<double> animation;
  final int targetFps;
  final Widget Function(BuildContext context, Widget? child) builder;
  final Widget? child;

  const _ThrottledAnimatedBuilder({
    required this.animation,
    required this.targetFps,
    required this.builder,
    this.child,
  });

  @override
  State<_ThrottledAnimatedBuilder> createState() => _ThrottledAnimatedBuilderState();
}

class _ThrottledAnimatedBuilderState extends State<_ThrottledAnimatedBuilder> {
  int _lastRebuildMs = 0;
  late int _minFrameIntervalMs;

  @override
  void initState() {
    super.initState();
    // Calculate minimum interval between frames (e.g., 60fps = 16.6ms)
    _minFrameIntervalMs = (1000 / widget.targetFps).floor();
    widget.animation.addListener(_onAnimationTick);
  }

  @override
  void dispose() {
    widget.animation.removeListener(_onAnimationTick);
    super.dispose();
  }

  void _onAnimationTick() {
    final now = DateTime.now().millisecondsSinceEpoch;
    final elapsed = now - _lastRebuildMs;

    // Only rebuild if enough time has passed since last rebuild
    if (elapsed >= _minFrameIntervalMs) {
      _lastRebuildMs = now;
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.builder(context, widget.child);
  }
}
