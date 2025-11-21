// lib/widgets/zoomable_text.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/text_zoom_service.dart';
import '../services/haptic_feedback_service.dart';

/// A text widget that supports pinch-to-zoom (1x-3x) and double-tap to reset
/// Follows ACCESSIBILITY_RESEARCH.md specifications for verse reading
class ZoomableText extends StatefulWidget {
  final String text;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final bool softWrap;

  const ZoomableText(
    this.text, {
    super.key,
    this.style,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.overflow,
    this.softWrap = true,
  });

  @override
  State<ZoomableText> createState() => _ZoomableTextState();
}

class _ZoomableTextState extends State<ZoomableText> {
  double _localZoom = 1.0; // Temp zoom during pinch gesture
  double _baseZoom = 1.0; // Base zoom at gesture start

  @override
  Widget build(BuildContext context) {
    final zoomService = context.watch<TextZoomService>();

    return GestureDetector(
      // Pinch to zoom
      onScaleStart: (details) {
        _baseZoom = zoomService.zoomLevel;
        _localZoom = _baseZoom;
      },
      onScaleUpdate: (details) {
        setState(() {
          _localZoom = (_baseZoom * details.scale).clamp(
            TextZoomService.minZoom,
            TextZoomService.maxZoom,
          );
        });
      },
      onScaleEnd: (details) {
        // Commit zoom level to service
        zoomService.setZoomLevel(_localZoom);
        HapticFeedbackService.light();
      },
      // Double-tap to reset zoom
      onDoubleTap: () {
        if (!zoomService.isAtDefaultZoom) {
          zoomService.resetZoom();
          HapticFeedbackService.medium();
          _showZoomResetSnackbar(context);
        }
      },
      child: Text(
        widget.text,
        style: widget.style?.copyWith(
          fontSize: (widget.style?.fontSize ?? 16.0) * _localZoom,
        ),
        textAlign: widget.textAlign,
        maxLines: widget.maxLines,
        overflow: widget.overflow,
        softWrap: widget.softWrap,
      ),
    );
  }

  void _showZoomResetSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Text zoom reset to 1×'),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

/// Extension widget for entire scrollable content with zoom control
class ZoomableScrollView extends StatefulWidget {
  final Widget child;
  final ScrollController? controller;

  const ZoomableScrollView({
    super.key,
    required this.child,
    this.controller,
  });

  @override
  State<ZoomableScrollView> createState() => _ZoomableScrollViewState();
}

class _ZoomableScrollViewState extends State<ZoomableScrollView> {
  double _localZoom = 1.0;
  double _baseZoom = 1.0;

  @override
  Widget build(BuildContext context) {
    final zoomService = context.watch<TextZoomService>();

    return GestureDetector(
      onScaleStart: (details) {
        _baseZoom = zoomService.zoomLevel;
        _localZoom = _baseZoom;
      },
      onScaleUpdate: (details) {
        setState(() {
          _localZoom = (_baseZoom * details.scale).clamp(
            TextZoomService.minZoom,
            TextZoomService.maxZoom,
          );
        });
      },
      onScaleEnd: (details) {
        zoomService.setZoomLevel(_localZoom);
        HapticFeedbackService.light();
      },
      onDoubleTap: () {
        if (!zoomService.isAtDefaultZoom) {
          zoomService.resetZoom();
          HapticFeedbackService.medium();
          _showZoomResetSnackbar(context);
        }
      },
      child: Transform.scale(
        scale: _localZoom,
        alignment: Alignment.topLeft,
        child: widget.child,
      ),
    );
  }

  void _showZoomResetSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Text zoom reset to 1×'),
        duration: Duration(seconds: 1),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

/// Zoom control buttons for manual zoom adjustment
class ZoomControls extends StatelessWidget {
  const ZoomControls({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final zoomService = context.watch<TextZoomService>();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            iconSize: 20,
            onPressed: zoomService.isAtMinZoom
                ? null
                : () {
                    HapticFeedbackService.light();
                    zoomService.zoomOut();
                  },
            tooltip: 'Zoom out',
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              '${(zoomService.zoomLevel * 100).toInt()}%',
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add),
            iconSize: 20,
            onPressed: zoomService.isAtMaxZoom
                ? null
                : () {
                    HapticFeedbackService.light();
                    zoomService.zoomIn();
                  },
            tooltip: 'Zoom in',
          ),
        ],
      ),
    );
  }
}
