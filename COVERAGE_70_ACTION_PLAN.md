# Action Plan: Reaching 70% Test Coverage

**Current**: 54.79% (6,088 / 11,112 lines)
**Target**: 70.00% (7,778 / 11,112 lines)
**Gap**: 1,690 lines needed (+15.21%)

---

## 🎯 Three-Phase Approach

### Phase 1: Fix Failing Tests (Priority 1)
**Goal**: Fix 473 failing tests to unlock existing coverage
**Estimated Coverage Gain**: +5-7%
**Estimated Time**: 2-3 hours

#### Tasks:
1. **Fix Animation Timeouts** (~150 failing tests)
   - Files to fix: 12 test files
   - Pattern: Replace `pumpAndSettle()` with timed `pump()`
   - Command: Use agent to automate this fix

2. **Fix Widget Expectations** (~100 failing tests)
   - Files: `bookmark_card_test.dart`, `error_widgets_test.dart`
   - Issues: Multiple widgets found, text not found
   - Fix: Update test expectations or widget structure

3. **Fix Mock Setup Issues** (~100 failing tests)
   - Files: Service test files
   - Issues: Mock return values, method signatures
   - Fix: Update mock configurations

4. **Fix Provider Issues** (~75 failing tests)
   - Files: Screen test files
   - Issues: Missing providers in test setup
   - Fix: Add required providers to test widget trees

---

### Phase 2: Add Service Test Coverage (Priority 2)
**Goal**: Create tests for untested/undertested services
**Estimated Coverage Gain**: +8-10%
**Estimated Time**: 3-4 hours

#### New Test Files to Create:

1. **`test/services/analytics_service_test.dart`**
   - Methods: 15-20 to test
   - Estimated tests: 40 tests
   - Coverage gain: ~2%

2. **`test/services/cache_refresh_service_test.dart`**
   - Methods: 10-12 to test
   - Estimated tests: 30 tests
   - Coverage gain: ~2%

3. **`test/services/post_login_data_loader_test.dart`**
   - Methods: 8-10 to test
   - Estimated tests: 25 tests
   - Coverage gain: ~2%

4. **`test/services/notification_permission_service_test.dart`**
   - Methods: 6-8 to test
   - Estimated tests: 20 tests
   - Coverage gain: ~1.5%

**Total**: 115 new tests, ~7.5% gain

---

### Phase 3: Add Model Test Coverage (Priority 3)
**Goal**: Test all model classes
**Estimated Coverage Gain**: +3-5%
**Estimated Time**: 1-2 hours

#### New Test Files to Create:

1. **`test/models/chapter_test.dart`**
   - Constructor, fromJson, toJson, equality
   - Estimated tests: 15 tests
   - Coverage gain: ~0.8%

2. **`test/models/verse_test.dart`**
   - Constructor, fromJson, toJson, equality
   - Estimated tests: 12 tests
   - Coverage gain: ~0.7%

3. **`test/models/scenario_test.dart`**
   - Constructor, fromJson, toJson, equality
   - Estimated tests: 20 tests
   - Coverage gain: ~1.2%

4. **`test/models/journal_entry_test.dart`**
   - Constructor, fromJson, toJson, encryption
   - Estimated tests: 18 tests
   - Coverage gain: ~0.9%

5. **`test/models/bookmark_test.dart`**
   - Constructor, fromJson, toJson, equality
   - Estimated tests: 12 tests
   - Coverage gain: ~0.6%

6. **`test/models/search_result_test.dart`**
   - Constructor, fromJson, equality
   - Estimated tests: 10 tests
   - Coverage gain: ~0.5%

**Total**: 87 new tests, ~4.7% gain

---

## 📅 Execution Timeline

### Option A: Sequential (Safer)
**Total Time**: 6-9 hours

```
Day 1 (3 hours):
- Phase 1, Task 1: Fix animation timeouts (all 12 files)
- Phase 1, Task 2: Fix widget expectations (partial)

Day 2 (3 hours):
- Phase 1, Tasks 2-4: Complete failing test fixes
- Run coverage: Expected ~60-62%

Day 3 (3 hours):
- Phase 2: Create analytics_service and cache_refresh_service tests
- Run coverage: Expected ~64-66%

Day 4 (2 hours):
- Phase 2: Create post_login_data_loader and notification tests
- Phase 3: Start model tests
- Run coverage: Expected ~68-69%

Day 5 (1 hour):
- Phase 3: Complete model tests
- Final coverage run
- Expected: 70%+
```

### Option B: Parallel (Faster, Riskier)
**Total Time**: 4-6 hours

```
Session 1 (2 hours):
- Launch 3 parallel agents:
  - Agent 1: Fix animation timeouts (12 files)
  - Agent 2: Create analytics + cache refresh tests
  - Agent 3: Create all model tests
- Run coverage: Expected ~63-65%

Session 2 (2 hours):
- Fix widget expectation issues manually
- Create post_login_data_loader tests
- Create notification_permission tests
- Run coverage: Expected ~68-69%

Session 3 (1 hour):
- Fix remaining failing tests
- Polish and validate
- Final coverage run
- Expected: 70%+
```

---

## 🔧 Quick Reference: Fix Patterns

### Animation Timeout
```bash
# Find files with pumpAndSettle
grep -r "pumpAndSettle" test/ | grep -v ".skip"

# Pattern to replace
OLD: await tester.pumpAndSettle();
NEW: await tester.pump(const Duration(milliseconds: 100));
     await tester.pump(const Duration(milliseconds: 100));
```

### Model Test Template
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:GitaWisdom/models/MODEL_NAME.dart';

void main() {
  group('MODEL_NAME', () {
    test('constructor creates instance with correct values', () {
      // Test constructor
    });

    test('fromJson deserializes correctly', () {
      // Test fromJson
    });

    test('toJson serializes correctly', () {
      // Test toJson
    });

    test('equality works correctly', () {
      // Test == operator
    });
  });
}
```

### Service Test Template
```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:GitaWisdom/services/SERVICE_NAME.dart';
import '../test_setup.dart';

void main() {
  late ServiceName service;

  setUp(() async {
    await setupTestEnvironment();
    service = ServiceName();
  });

  tearDown(() async {
    await service.dispose();
    await teardownTestEnvironment();
  });

  group('ServiceName', () {
    test('initializes correctly', () async {
      await service.initialize();
      expect(service.isInitialized, isTrue);
    });

    // Add method-specific tests
  });
}
```

---

## 📊 Coverage Tracking

### Current Breakdown (Estimated)
```
Category          | Coverage | Priority
------------------|----------|----------
Services          | ~60%     | High
Widgets           | ~50%     | High
Screens           | ~45%     | Medium
Models            | ~30%     | High
Core/Utils        | ~70%     | Low
```

### After Each Phase
```
Phase 1 Complete: ~62% total
Phase 2 Complete: ~69% total
Phase 3 Complete: ~73% total (exceeds target!)
```

---

## ⚠️ Risks & Mitigation

### Risk 1: Fixing Tests Breaks Others
**Mitigation**:
- Run full test suite after each batch of fixes
- Fix in small batches (5-10 files at a time)
- Keep previous coverage reports

### Risk 2: New Tests Don't Add Coverage
**Mitigation**:
- Focus on untested code paths first
- Use coverage reports to identify gaps
- Validate coverage after each new file

### Risk 3: Time Overruns
**Mitigation**:
- Use parallel agents when possible
- Automate repetitive fixes (animation timeouts)
- Focus on high-impact areas first

---

## ✅ Success Criteria

- [ ] Coverage >= 70%
- [ ] Test pass rate >= 85%
- [ ] No compilation errors
- [ ] All critical services tested
- [ ] All models tested
- [ ] Documentation updated

---

## 🚀 Ready to Execute?

**Recommended**: Start with **Option A (Sequential)** for safety and predictability.

**Command to Start Phase 1**:
```bash
# Find all files with pumpAndSettle
grep -l "pumpAndSettle" test/**/*.dart | grep -v ".skip"

# Launch agent to fix them all
# Or fix manually using the pattern above
```

**Next Review Point**: After Phase 1 completion
**Expected Coverage After Phase 1**: ~60-62%
