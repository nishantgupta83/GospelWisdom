# GospelWisdom Database Schema Documentation

## Overview
Comprehensive PostgreSQL schema for Gospel reading and wisdom application supporting 4 Gospels, multiple Bible translations, and multilingual UI.

## Core Tables

### gospels
4 Gospel books (Matthew, Mark, Luke, John)
- `gospel_id` - Primary key (1-4)
- `name`, `author`, `theme`, `purpose`
- `chapter_count`, `verse_count`
- `key_themes[]` - Array of themes

### gospel_chapters
89 chapters across 4 Gospels
- `id` - UUID primary key
- `gospel_id`, `chapter_number`
- `title`, `summary`, `theme`
- `key_teachings[]`, `key_verses[]`
- `verse_count`

### gospel_verses
~3,800 verses
- `id` - UUID primary key
- `gospel_id`, `chapter_id`, `verse_number`
- `text` - Verse content (NIV default)
- `reference` - "John 3:16"
- `keywords[]`, `themes[]`
- `cross_references[]`

## Translation Support

### supported_translations
Bible versions (NIV, KJV, ESV, NRSV, NLT, NASB, MSG)
- `translation_code` - Primary key
- `full_name`, `year_published`
- `is_primary` - Default translation flag

### gospel_verse_translations
Verses in multiple Bible translations
- Links verses to different translations
- Enables side-by-side comparison

### gospel_translations
Multilingual Gospel names (for UI)
- Gospel book names in multiple languages

## Scenarios

### gospel_scenarios
Gospel-based life scenarios
- `title`, `description`, `category`
- `gospel_id`, `chapter_id`, `verse_id`
- `heart_response` vs `gospel_response`
- `gospel_wisdom`, `action_steps[]`
- Categories: Faith, Love, Forgiveness, Courage, Prayer, etc.

## Performance Features

### Materialized Views
- `gospel_summary` - Gospel book summaries
- `gospel_chapter_summary` - Chapter summaries with counts

### RPC Functions
- `get_gospel_verses_with_translation()` - Fetch verses with translation fallback
- `search_gospel_verses()` - Full-text search
- `get_scenarios_by_category()` - Filter scenarios
- `refresh_gospel_views()` - Refresh materialized views

### Indexes
- Full-text search on verse text
- GIN indexes on arrays (keywords, themes, tags)
- Lookup indexes on foreign keys

## Security

### Row Level Security (RLS)
- Public read access for all Gospel content
- Authenticated write access for user data

## Migration Path

Schema file: `supabase/migrations/100_create_gospelwisdom_schema.sql`

Run migration:
```sql
psql -U postgres -d gospelwisdom -f 100_create_gospelwisdom_schema.sql
```

## Validation

Gospel Scholar Agent validates:
- Verse accuracy across multiple Bible sources
- Chapter structure and metadata
- Data quality and completeness

See: `gospel_scholar_agent/README.md`
