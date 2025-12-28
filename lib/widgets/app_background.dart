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

  // Lavender Theme Light - Soft lavender to violet
  static const _lavenderLightGradientColors = [
    Color(0xFFFAF7FF), // Very light lavender (matches lavenderLightBackground)
    Color(0xFFF3EAFF), // Soft lavender (matches lavenderLightSurface)
    Color(0xFFE8DEFF), // Light violet
  ];

  // Lavender Theme Dark - Deep violet to purple
  static const _lavenderDarkGradientColors = [
    Color(0xFF1A0A2E), // Deep violet (matches lavenderDarkBackground)
    Color(0xFF2D1B4E), // Dark purple (matches lavenderDarkSurface)
    Color(0xFF3D2665), // Rich purple
  ];

  // Red Theme Light - Warm white to rose
  static const _redLightGradientColors = [
    Color(0xFFFFF8F7), // Warm white (matches redLightBackground)
    Color(0xFFFFEBEE), // Very light pink (matches redLightSurface)
    Color(0xFFFFCDD2), // Light rose
  ];

  // Red Theme Dark - Deep crimson to dark red
  static const _redDarkGradientColors = [
    Color(0xFF2E0A0A), // Deep crimson (matches redDarkBackground)
    Color(0xFF421515), // Dark red (matches redDarkSurface)
    Color(0xFF5D1F1F), // Rich crimson
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

  // Lavender Light Orbs - Purple accents
  static const _orbColorLavenderLightPrimary = Color(0x1A7C4DFF); // Deep violet with alpha ~0.1
  static const _orbColorLavenderLightSecondary = Color(0x0D9575CD); // Muted purple with alpha ~0.05

  // Lavender Dark Orbs - Light purple accents
  static const _orbColorLavenderDarkPrimary = Color(0x1AB388FF); // Light violet with alpha ~0.1
  static const _orbColorLavenderDarkSecondary = Color(0x0DCE93D8); // Pink purple with alpha ~0.05

  // Red Light Orbs - Warm red accents
  static const _orbColorRedLightPrimary = Color(0x1AD32F2F); // Warm red with alpha ~0.1
  static const _orbColorRedLightSecondary = Color(0x0DE57373); // Light coral with alpha ~0.05

  // Red Dark Orbs - Light coral accents
  static const _orbColorRedDarkPrimary = Color(0x1AEF9A9A); // Light coral with alpha ~0.1
  static const _orbColorRedDarkSecondary = Color(0x0DFF8A80); // Bright coral with alpha ~0.05

  const AppBackground({
    Key? key,
    this.themeStyle,
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
      case ThemeStyle.lavender:
        return isDark ? _lavenderDarkGradientColors : _lavenderLightGradientColors;
      case ThemeStyle.red:
        return isDark ? _redDarkGradientColors : _redLightGradientColors;
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
      case ThemeStyle.lavender:
        return isDark
            ? [_orbColorLavenderDarkPrimary, _orbColorLavenderDarkSecondary]
            : [_orbColorLavenderLightPrimary, _orbColorLavenderLightSecondary];
      case ThemeStyle.red:
        return isDark
            ? [_orbColorRedDarkPrimary, _orbColorRedDarkSecondary]
            : [_orbColorRedLightPrimary, _orbColorRedLightSecondary];
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
