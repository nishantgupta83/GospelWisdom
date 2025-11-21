# Gospel App Accessibility & UX Research Summary

## Research Date: 2025-11-20
**Purpose**: Ensure GospelWisdom meets Apple HIG accessibility standards and matches patterns from top Bible apps.

---

## 1. Top Bible Apps Analyzed

- **YouVersion Bible** (450M+ downloads)
- **Dwell Audio Bible**
- **Bible.com**
- **Olive Tree Bible**
- **Logos Bible**

---

## 2. Chapter Navigation Patterns

### Visual Design
- **Shape**: Diamond and rounded rectangle badges are industry standard (NOT circles)
- **Grid Layout**: 2-3 columns on mobile, 4-6 on tablet
- **Spacing**: 12-16px padding between cards
- **Badge Position**: Top-left or centered
- **Chapter Number**: Bold, high contrast, 18-24pt

### Interaction
- **Tap Target**: Minimum 44x44pt (Apple HIG requirement)
- **Haptic Feedback**: Light impact on navigation taps
- **Visual Feedback**: Subtle scale animation (0.95x) or highlight on press

---

## 3. Audio Features

### Essential Controls
- **Playback Speed**: 0.5x, 0.75x, 1x, 1.25x, 1.5x, 2x
- **Sleep Timer**: 5, 10, 15, 30, 60 minutes + "End of Chapter"
- **Background Playback**: Lock screen controls with chapter title/reference
- **Read-Along Mode**: Synchronized text highlighting with audio

### State Management
- Persistent playback position across app restarts
- Resume from last position
- Background download for offline playback
- Queue management for continuous listening

### UI Patterns
- Mini-player bar at bottom when audio playing
- Full-screen player with expanded controls
- Scrubber with chapter markers
- Auto-pause on phone calls/notifications

---

## 4. Bookmarking & Favorites

### Verse-Level Bookmarking
- **Icon**: Star (filled/outlined) - NOT hearts (religious context)
- **Placement**: Right side of verse, 28-32pt tap target
- **Haptic**: Medium impact on bookmark add
- **Feedback**: Success toast or subtle animation

### Color-Coded Highlights
- **Colors**: 5 options (Yellow, Green, Blue, Pink, Purple)
- **Activation**: Long-press verse to show color picker
- **Persistence**: Synced across devices
- **UI**: Subtle background tint (15-20% opacity)

### Organization
- Separate tabs for Bookmarks vs Highlights
- Filter by Gospel, chapter, or color
- Swipe-to-delete gesture
- Bulk export/share options

---

## 5. Accessibility Standards (Apple HIG)

### Dynamic Type Support
- All text must scale with system text size (1x - 3x)
- Use `TextScaler` from MediaQuery
- Test at largest accessibility sizes
- Maintain minimum 44x44pt tap targets at all sizes

### VoiceOver Optimization
- Descriptive labels: "Matthew Chapter 5, 48 verses, 12 scenarios"
- Button hints: "Double tap to play audio", "Double tap to bookmark"
- Group related content with Semantics widgets
- Announce state changes (bookmarked, playing, paused)

### Visual Accessibility
- **Contrast Ratio**: WCAG AA minimum 4.5:1 for body text, 3:1 for large text
- **Color Independence**: Never rely on color alone (use icons + text)
- **High Contrast Mode**: Test with system high contrast enabled
- **Reduce Motion**: Respect system preference, disable animations if needed

### Haptic Guidelines
- **Light Impact**: Navigation, tab switches, verse selection
- **Medium Impact**: Bookmarking, note creation, important actions
- **Heavy Impact**: Chapter completion, achievements, major milestones
- **Selection**: Picker scrolling, rating adjustments
- **Strategy**: Use sparingly to avoid fatigue

---

## 6. Text Magnification

### Pinch-to-Zoom
- **Verse Reading Views**: Allow 1x - 3x zoom
- **Gesture**: Standard pinch gesture
- **Persistence**: Remember zoom level per user
- **Reset**: Double-tap to return to 1x

### System Integration
- Respect iOS Text Size accessibility setting
- Support Zoom accessibility feature
- Maintain layout at extreme sizes
- Scroll content, not zoom entire screen

---

## 7. SF Symbols (Apple Icons)

### Recommended Icons
- `book.circle` - Chapters/Bible
- `star` / `star.fill` - Bookmarks
- `play.circle` / `pause.circle` - Audio playback
- `speedometer` - Playback speed
- `moon.zzz` - Sleep timer
- `arrow.down.circle` - Download for offline
- `highlighter` - Verse highlighting
- `magnifyingglass` - Search

### Benefits
- Auto-adapt to dark mode
- Support Dynamic Type
- Match iOS system design
- Built-in accessibility labels

---

## 8. Dark Mode Considerations

### Color Palette
- **Light Mode**: Cream paper (#FFFEF5), dark text (#1A1715)
- **Dark Mode**: Dark parchment (#2A2520), light text (#F5F5DC)
- **Notebook Lines**: Subtle opacity (0.5-0.6)
- **Margins**: Red/pink tint with reduced opacity

### High Contrast Mode
- Increase line weight by 1-2px
- Boost contrast ratio to 7:1 (AAA level)
- Remove subtle shadows
- Increase color saturation

---

## 9. Performance Targets (iOS)

- **Frame Rate**: 55+ FPS (avoid dropped frames during scrolling)
- **Memory**: <150MB for Bible content + audio player
- **Launch Time**: <2 seconds to first interaction
- **Audio Latency**: <100ms from button press to sound

---

## 10. Implementation Priority

### Phase 1: Foundational (✅ COMPLETED)
- Diamond badge shape
- Haptic feedback service
- Basic accessibility labels

### Phase 2: Audio Enhancements (⏳ PENDING)
- Speed controls (0.5x - 2x)
- Sleep timer (5/10/15/30/60 min)
- Persistent mini-player
- Background playback

### Phase 3: Accessibility Features (⏳ PENDING)
- Pinch-to-zoom magnification
- Dynamic Type validation
- VoiceOver optimization
- High contrast mode testing

### Phase 4: Verse Bookmarking (⏳ PENDING)
- Star icon system
- 5 color-coded highlights
- Long-press color picker
- Bookmark organization screen

---

## 11. Testing Checklist

### Accessibility
- [ ] Test with VoiceOver enabled
- [ ] Verify all text scales with Dynamic Type
- [ ] Check contrast ratios (use Xcode Accessibility Inspector)
- [ ] Test with Reduce Motion enabled
- [ ] Validate tap targets are 44x44pt minimum
- [ ] Test with high contrast mode

### Audio
- [ ] Verify playback continues in background
- [ ] Test lock screen controls
- [ ] Check sleep timer accuracy
- [ ] Validate speed controls work correctly
- [ ] Test auto-pause on interruptions

### Performance
- [ ] Profile with Instruments (Time Profiler)
- [ ] Check memory usage (Allocations instrument)
- [ ] Measure launch time (XCTest performance tests)
- [ ] Verify 60 FPS during scrolling (Core Animation instrument)

---

## 12. Resources

- [Apple Human Interface Guidelines](https://developer.apple.com/design/human-interface-guidelines/)
- [iOS Accessibility Programming Guide](https://developer.apple.com/accessibility/ios/)
- [WCAG 2.1 Guidelines](https://www.w3.org/WAI/WCAG21/quickref/)
- [Flutter Accessibility Guide](https://docs.flutter.dev/development/accessibility-and-localization/accessibility)
- [SF Symbols Browser](https://developer.apple.com/sf-symbols/)

---

**Document Status**: Research completed, implementation in progress
**Next Review**: After Phase 2-4 implementation
**Owner**: Development Team
