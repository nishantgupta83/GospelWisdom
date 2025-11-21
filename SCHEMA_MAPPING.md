# GospelWisdom - Schema Mapping (Old → New)

## Database Tables Mapping

### OLD Schema (GitaWisdom) → NEW Schema (GospelWisdom)

| Old Table | New Table | Notes |
|-----------|-----------|-------|
| `chapters` | `gospel_chapters` | 18 Gita chapters → 89 Gospel chapters |
| `verses` | `gospel_verses` | Gita verses → Gospel verses |
| `scenarios` | `gospel_scenarios` | Life scenarios with Gospel wisdom |
| `chapter_translations` | `gospel_chapter_translations` | Multilingual support |
| N/A | `gospels` | NEW: 4 Gospel books (Matthew, Mark, Luke, John) |
| N/A | `supported_translations` | NEW: Bible translations (NIV, KJV, ESV, etc.) |

---

## Column Mapping by Table

### 1. CHAPTERS → GOSPEL_CHAPTERS

#### Old Schema (`chapters`):
```
ch_chapter_id       INTEGER (1-18)
ch_title           VARCHAR(200)
ch_subtitle        VARCHAR(300)
ch_summary         TEXT
ch_verse_count     INTEGER
ch_theme           VARCHAR(200)
ch_key_teachings   TEXT[]
created_at         TIMESTAMP
updated_at         TIMESTAMP
```

#### New Schema (`gospel_chapters`):
```
id                 UUID (primary key)
gospel_id          INTEGER (1-4) → references gospels(gospel_id)
chapter_number     INTEGER (1-28 for Matthew, etc.)
title              VARCHAR(200)
summary            TEXT
theme              TEXT
key_teachings      TEXT[]
key_verses         TEXT[]
verse_count        INTEGER
events             TEXT[]
cross_references   TEXT[]
created_at         TIMESTAMP
updated_at         TIMESTAMP
```

#### Mapping Strategy:
```
OLD                 → NEW
-------------------------------------------
ch_chapter_id       → We need to map to gospel_id (1-4)
ch_title            → title
ch_subtitle         → (drop this field, use gospel.name instead)
ch_summary          → summary
ch_verse_count      → verse_count
ch_theme            → theme
ch_key_teachings    → key_teachings
```

**Key Changes:**
- 18 Gita chapters → Display as 4 Gospels (each with many chapters)
- Need to query both `gospels` + `gospel_chapters` tables
- Gospel level = Matthew/Mark/Luke/John
- Chapter level = Matthew 1, Matthew 2, etc.

---

### 2. VERSES → GOSPEL_VERSES

#### Old Schema (`verses`):
```
v_id               SERIAL
v_chapter_id       INTEGER → references chapters(ch_chapter_id)
v_verse_id         INTEGER
v_description      TEXT
created_at         TIMESTAMP
updated_at         TIMESTAMP
```

#### New Schema (`gospel_verses`):
```
id                 UUID
gospel_id          INTEGER → references gospels(gospel_id)
chapter_id         UUID → references gospel_chapters(id)
verse_number       INTEGER
text               TEXT
reference          VARCHAR(20)  "John 3:16"
translation_code   VARCHAR(10)  "NIV"
context            TEXT
cross_references   TEXT[]
keywords           TEXT[]
themes             TEXT[]
created_at         TIMESTAMP
updated_at         TIMESTAMP
```

#### Mapping Strategy:
```
OLD                 → NEW
-------------------------------------------
v_chapter_id        → Need to map to gospel_id + chapter_id
v_verse_id          → verse_number
v_description       → text
```

**Key Changes:**
- Now tied to both gospel AND chapter (2-level hierarchy)
- Added `reference` field (e.g., "John 3:16")
- Added `translation_code` for multiple Bible versions
- Added metadata: keywords, themes, cross_references

---

### 3. SCENARIOS → GOSPEL_SCENARIOS

#### Old Schema (`scenarios`):
```
sc_id              SERIAL
sc_title           VARCHAR(300)
sc_description     TEXT
sc_category        VARCHAR(100)
sc_chapter         INTEGER → references chapters(ch_chapter_id)
sc_heart_response  TEXT
sc_duty_response   TEXT
sc_gita_wisdom     TEXT  ← OLD FIELD NAME
sc_verse           TEXT
sc_verse_number    VARCHAR(50)
sc_tags            TEXT[]
sc_action_steps    TEXT[]
created_at         TIMESTAMP
updated_at         TIMESTAMP
```

#### New Schema (`gospel_scenarios`):
```
id                 SERIAL
title              VARCHAR(300)
description        TEXT
category           VARCHAR(100)
gospel_id          INTEGER → references gospels(gospel_id)
chapter_id         UUID → references gospel_chapters(id)
verse_id           UUID → references gospel_verses(id)
verse_reference    VARCHAR(50)  "John 3:16-17"
heart_response     TEXT
gospel_response    TEXT  ← NEW FIELD NAME
gospel_wisdom      TEXT  ← RENAMED FROM sc_gita_wisdom
action_steps       TEXT[]
tags               TEXT[]
difficulty_level   VARCHAR(20)
created_at         TIMESTAMP
updated_at         TIMESTAMP
```

#### Mapping Strategy:
```
OLD                 → NEW
-------------------------------------------
sc_id               → id
sc_title            → title
sc_description      → description
sc_category         → category
sc_chapter          → gospel_id (1-4, map from old chapter)
sc_heart_response   → heart_response
sc_duty_response    → gospel_response (RENAMED)
sc_gita_wisdom      → gospel_wisdom (RENAMED)
sc_verse            → (combine into verse_reference)
sc_verse_number     → verse_reference
sc_tags             → tags
sc_action_steps     → action_steps
```

**Key Changes:**
- `sc_gita_wisdom` → `gospel_wisdom`
- `sc_duty_response` → `gospel_response`
- Now linked to gospel, chapter, AND verse (3-level hierarchy)
- Added `difficulty_level` field

---

## Code Files to Update

### Priority Order (Table by Table):

#### 1. GOSPELS Table (NEW - No mapping needed)
**Files to create/update:**
- [ ] `lib/models/gospel.dart` (NEW MODEL)
- [ ] `lib/services/enhanced_supabase_service.dart` (add `fetchGospels()`)

#### 2. CHAPTERS Table → GOSPEL_CHAPTERS
**Files to update:**
- [ ] `lib/models/chapter.dart` - Update model to match new schema
- [ ] `lib/services/enhanced_supabase_service.dart`:
  - [ ] `fetchAllChapters()` - Query `gospel_chapters` instead of `chapters`
  - [ ] `fetchChapterById()` - Update column names
  - [ ] `testConnection()` - Fix table name
- [ ] `lib/screens/home_screen.dart` - May need to show Gospels first
- [ ] `lib/screens/chapters_screen.dart` - Update to show gospel chapters
- [ ] `lib/screens/chapters_detail_view.dart` - Update queries

#### 3. VERSES Table → GOSPEL_VERSES
**Files to update:**
- [ ] `lib/models/verse.dart` - Update model fields
- [ ] `lib/services/enhanced_supabase_service.dart`:
  - [ ] `fetchVersesByChapter()` - Query `gospel_verses`
  - [ ] Update all verse-related queries
- [ ] `lib/screens/verse_list_view.dart` - Update display

#### 4. SCENARIOS Table → GOSPEL_SCENARIOS
**Files to update:**
- [ ] `lib/models/scenario.dart` - Rename fields
- [ ] `lib/services/enhanced_supabase_service.dart`:
  - [ ] `fetchScenariosByChapter()` - Query `gospel_scenarios`
  - [ ] Update field names (sc_gita_wisdom → gospel_wisdom)
- [ ] `lib/screens/scenarios_screen.dart` - Update queries
- [ ] `lib/screens/scenario_detail_view.dart` - Update field access

---

## Implementation Plan (Step by Step)

### Phase 1: Add Gospel Model (NEW)
1. Create `lib/models/gospel.dart`
2. Add to `enhanced_supabase_service.dart`: `fetchGospels()`
3. Test: Can fetch 4 Gospels

### Phase 2: Update Chapters (CRITICAL)
1. Update `lib/models/chapter.dart`
2. Update `enhanced_supabase_service.dart` chapter queries
3. Test: Can see 4 Gospels in app

### Phase 3: Update Verses
1. Update `lib/models/verse.dart`
2. Update verse queries in service
3. Test: Can see verses for each Gospel

### Phase 4: Update Scenarios
1. Update `lib/models/scenario.dart`
2. Rename `sc_gita_wisdom` → `gospel_wisdom`
3. Update scenario queries
4. Test: Scenarios show Gospel wisdom

---

## Current Database State

You have in Supabase:
- ✅ `gospels` - 4 rows (Matthew, Mark, Luke, John)
- ✅ `gospel_chapters` - 89 rows (28+16+24+21)
- ✅ `gospel_verses` - 15+ sample verses
- ✅ `gospel_scenarios` - 6 scenarios
- ✅ `supported_translations` - 7 Bible translations

**Next:** Update app code to query these tables!

---

## Let's Start!

Tell me which table you want to tackle first, or we can go in order:
1. **Gospels (NEW)** - Add support for 4 Gospel books
2. **Chapters** - Update to use `gospel_chapters`
3. **Verses** - Update to use `gospel_verses`
4. **Scenarios** - Update to use `gospel_scenarios`

I recommend starting with **#2 Chapters** since that's what's currently broken in the app.
