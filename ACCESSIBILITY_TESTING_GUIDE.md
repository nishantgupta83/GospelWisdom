# Accessibility Testing Guide - Gospel Wisdom App

**Device**: iPhone (iOS 18.5)
**Date**: November 21, 2025
**Features to Test**: VoiceOver, Dynamic Type, High Contrast Mode, Text Zoom

---

## Pre-Testing Setup

### Enable VoiceOver (for testing semantic labels):
1. Open **Settings** → **Accessibility** → **VoiceOver**
2. Toggle **VoiceOver** ON
3. Learn basic gestures:
   - **Single tap**: Select item
   - **Double tap**: Activate selected item
   - **Three-finger swipe left/right**: Scroll
   - **Two-finger swipe up**: Read all from top
   - **Rotor gesture** (twist two fingers): Change navigation mode

### Enable High Contrast Mode:
1. Open **Settings** → **Accessibility** → **Display & Text Size**
2. Toggle **Increase Contrast** ON
3. Check **Reduce Transparency** as well (optional)

### Adjust Text Size (Dynamic Type testing):
1. Open **Settings** → **Accessibility** → **Display & Text Size** → **Larger Text**
2. Toggle **Larger Accessibility Sizes** ON
3. Move slider to test different sizes (7 levels available)

---

## Test Suite 1: VoiceOver (Semantic Labels)

### 🎯 Test 1.1: Verse Reading Screen

**Steps:**
1. Launch the app with VoiceOver enabled
2. Navigate to **Chapters** tab → Select any chapter → View verses
3. Focus on a verse card

**Expected Results:**
- ✅ VoiceOver should announce: **"Verse X of Y, button"**
- ✅ Should include hint: **"Double tap to read. Swipe right to share."**
- ✅ Verse text should be read aloud clearly
- ✅ Share button should announce: **"Share verse X, button. Double tap to share this verse"**

**Actual Results:**
- [ ] Verse label announced correctly
- [ ] Hint provided clearly
- [ ] Share button labeled properly
- [ ] Navigation smooth with gestures

**Notes:**
_______________________________________________________

### 🎯 Test 1.2: Chapter Navigation

**Steps:**
1. Navigate to **Chapters** tab
2. Focus on a chapter card
3. Listen to VoiceOver announcement

**Expected Results:**
- ✅ Should announce chapter title
- ✅ Should mention verse count (e.g., "47 verses")
- ✅ Should indicate it's tappable ("button" or "heading")

**Actual Results:**
- [ ] Chapter title announced
- [ ] Verse count mentioned
- [ ] Interactive element identified

**Notes:**
_______________________________________________________

### 🎯 Test 1.3: Bottom Navigation Bar

**Steps:**
1. Swipe focus to bottom navigation bar
2. Check each tab announcement

**Expected Results:**
- ✅ Each tab should announce its name ("Home", "Chapters", "Dilemmas", "Journal", "More")
- ✅ Should indicate selected state for current tab
- ✅ Should have "tab" or "button" suffix

**Actual Results:**
- [ ] All tabs announced correctly
- [ ] Selected state clear
- [ ] Navigation works with double-tap

**Notes:**
_______________________________________________________

---

## Test Suite 2: Dynamic Type Support

### 🎯 Test 2.1: System Text Size Scaling

**Steps:**
1. Set iOS text size to **smallest** (Settings → Display & Text Size)
2. Open Gospel app and navigate to verse reading
3. Increase text size to **largest accessibility size**
4. Check all screens (Home, Chapters, Dilemmas, Journal)

**Expected Results:**
- ✅ All text should scale proportionally with system settings
- ✅ No text clipping or overflow
- ✅ Layout should adjust to accommodate larger text
- ✅ Buttons and interactive elements remain usable

**Actual Results:**

| Screen | Scales Correctly | No Clipping | Layout OK | Notes |
|--------|------------------|-------------|-----------|-------|
| Home   | [ ]              | [ ]         | [ ]       |       |
| Chapters | [ ]            | [ ]         | [ ]       |       |
| Verse List | [ ]          | [ ]         | [ ]       |       |
| Dilemmas | [ ]            | [ ]         | [ ]       |       |
| Journal | [ ]             | [ ]         | [ ]       |       |

**Notes:**
_______________________________________________________

---

## Test Suite 3: High Contrast Mode

### 🎯 Test 3.1: Color Contrast Validation

**Steps:**
1. Enable **Increase Contrast** in Settings
2. Test all 4 theme styles:
   - Light theme
   - Dark theme
   - Paper theme
   - Sage theme
3. Navigate through all screens

**Expected Results:**
- ✅ Text remains clearly readable against backgrounds
- ✅ Gradient backgrounds don't reduce text contrast
- ✅ Interactive elements (buttons, cards) have clear boundaries
- ✅ Minimum 4.5:1 contrast ratio (WCAG AA standard)

**Actual Results:**

| Theme  | Text Clear | Gradients OK | Buttons Clear | Overall Pass |
|--------|------------|--------------|---------------|--------------|
| Light  | [ ]        | [ ]          | [ ]           | [ ]          |
| Dark   | [ ]        | [ ]          | [ ]           | [ ]          |
| Paper  | [ ]        | [ ]          | [ ]           | [ ]          |
| Sage   | [ ]        | [ ]          | [ ]           | [ ]          |

**Problem Areas Identified:**
_______________________________________________________

### 🎯 Test 3.2: Gradient Overlay Check

**Steps:**
1. With High Contrast enabled, view verse cards
2. Check if gradient overlays reduce text readability
3. Test in both light and dark modes

**Expected Results:**
- ✅ Text should remain crisp and readable
- ✅ Alpha blending should not wash out text
- ✅ Decorative gradients may disappear (acceptable)

**Actual Results:**
- [ ] Verse card text remains clear
- [ ] Background gradients appropriate
- [ ] No visual strain when reading

**Notes:**
_______________________________________________________

---

## Test Suite 4: Text Zoom (Pinch-to-Zoom)

### 🎯 Test 4.1: Pinch-to-Zoom Gesture

**Steps:**
1. Navigate to a verse reading screen
2. Perform pinch-out gesture on verse text
3. Try to zoom beyond 3x limit
4. Perform pinch-in gesture to zoom out
5. Try to zoom below 1x limit

**Expected Results:**
- ✅ Text smoothly scales from 1x to 3x
- ✅ Real-time preview during pinch gesture
- ✅ Cannot zoom beyond max (3x)
- ✅ Cannot zoom below min (1x)
- ✅ Light haptic feedback on zoom commit

**Actual Results:**
- [ ] Pinch gesture responsive
- [ ] Zoom limits enforced
- [ ] Haptic feedback works
- [ ] Visual feedback clear

**Notes:**
_______________________________________________________

### 🎯 Test 4.2: Double-Tap to Reset

**Steps:**
1. Zoom verse text to 2x
2. Double-tap anywhere on the verse text
3. Check zoom level

**Expected Results:**
- ✅ Zoom resets to 1x (default)
- ✅ Medium haptic feedback on reset
- ✅ Snackbar shows: "Text zoom reset to 1×"
- ✅ Animation smooth

**Actual Results:**
- [ ] Double-tap works consistently
- [ ] Haptic feedback present
- [ ] Visual confirmation shown
- [ ] Zoom level resets correctly

**Notes:**
_______________________________________________________

### 🎯 Test 4.3: Zoom Persistence

**Steps:**
1. Set verse text zoom to 2.5x
2. Close the app completely (swipe up from multitasking)
3. Reopen the app
4. Navigate back to verse reading

**Expected Results:**
- ✅ Zoom level should persist at 2.5x
- ✅ No reset to default on app restart

**Actual Results:**
- [ ] Zoom level persisted: ______x
- [ ] Works correctly across app restarts

**Notes:**
_______________________________________________________

---

## Test Suite 5: Combined Accessibility Features

### 🎯 Test 5.1: VoiceOver + Dynamic Type

**Steps:**
1. Enable VoiceOver
2. Set text size to largest accessibility size
3. Navigate app with VoiceOver gestures

**Expected Results:**
- ✅ VoiceOver continues working with large text
- ✅ Focus indicators visible despite layout changes
- ✅ Navigation remains functional

**Actual Results:**
- [ ] VoiceOver + large text compatible
- [ ] No unexpected behavior

**Notes:**
_______________________________________________________

### 🎯 Test 5.2: High Contrast + Text Zoom

**Steps:**
1. Enable High Contrast mode
2. Zoom verse text to 3x
3. Check readability

**Expected Results:**
- ✅ Text remains clear at 3x zoom with high contrast
- ✅ No color bleeding or visual artifacts

**Actual Results:**
- [ ] Text clear at max zoom
- [ ] High contrast effective

**Notes:**
_______________________________________________________

---

## Issues Found Summary

### Critical Issues (Must Fix):
1. _______________________________________________________
2. _______________________________________________________
3. _______________________________________________________

### Medium Priority Issues:
1. _______________________________________________________
2. _______________________________________________________

### Low Priority / Nice-to-Have:
1. _______________________________________________________
2. _______________________________________________________

---

## Overall Compliance Status

| Feature | Status | Notes |
|---------|--------|-------|
| VoiceOver Labels | [ ] Pass [ ] Fail | |
| Dynamic Type | [ ] Pass [ ] Fail | |
| High Contrast | [ ] Pass [ ] Fail | |
| Text Zoom | [ ] Pass [ ] Fail | |

**Recommendation**: [ ] Ready for release [ ] Needs fixes

**Tester Signature**: _________________ **Date**: _________________

---

## Quick Reference: Accessibility Settings Locations

- **VoiceOver**: Settings → Accessibility → VoiceOver
- **Dynamic Type**: Settings → Accessibility → Display & Text Size → Larger Text
- **High Contrast**: Settings → Accessibility → Display & Text Size → Increase Contrast
- **Bold Text**: Settings → Accessibility → Display & Text Size → Bold Text (optional test)
- **Reduce Motion**: Settings → Accessibility → Motion → Reduce Motion (if animations cause issues)

---

## Tips for Effective Testing

1. **Test one feature at a time** - Don't enable all accessibility features simultaneously for initial tests
2. **Use real content** - Navigate to actual verses and chapters, not just the home screen
3. **Document edge cases** - Note any unusual behavior or layout issues
4. **Take screenshots** - Visual evidence helps with bug reports
5. **Test with fresh eyes** - If text becomes hard to read, it's a real issue users will face

---

## Next Steps After Testing

1. **Document all findings** in this guide (fill out test result checkboxes)
2. **Create GitHub issues** for any failures with screenshots
3. **Prioritize fixes** based on severity (Critical → Medium → Low)
4. **Retest after fixes** to confirm resolution
5. **Update ACCESSIBILITY_VALIDATION_REPORT.md** with final test results
