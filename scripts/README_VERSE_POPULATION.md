# Gospel Verses Population Guide

This guide helps you populate all Gospel verses (~3,779 verses across 89 chapters) from free and credible sources.

## Free & Credible Bible Sources

### 1. **Bible Gateway** (Recommended)
- **URL**: https://www.biblegateway.com/
- **Translations**: Public Domain - WEB (World English Bible), KJV (King James Version)
- **License**: Free for personal/non-commercial use
- **Reliability**: Industry standard, used by millions

### 2. **Bible API**
- **URL**: https://bible-api.com/
- **Translation**: WEB (World English Bible - Public Domain)
- **License**: Completely free, no authentication required
- **Note**: Has rate limiting (60 requests/minute)

### 3. **ESV API** (For ESV translation)
- **URL**: https://api.esv.org/
- **Translation**: ESV (English Standard Version)
- **License**: Free for non-commercial use (requires API key)

## Step-by-Step Population Process

### Step 1: Get Chapter UUIDs from Supabase

Run this query in your Supabase SQL Editor:

```sql
SELECT gospel_id, chapter_number, id
FROM gospel_chapters
ORDER BY gospel_id, chapter_number;
```

Save the results - you'll need these UUIDs for verse insertion.

### Step 2: Choose Your Population Method

#### **Option A: Automated Script (Slow but Complete)**

Use the provided Python script with rate limiting:

```bash
cd scripts
python3 fetch_gospel_verses_slow.py
```

This will:
- Fetch verses from Bible API with 2-second delays
- Take ~3 hours for all 3,779 verses
- Generate complete SQL file

#### **Option B: Manual Population (Fast for specific chapters)**

1. Visit Bible Gateway: https://www.biblegateway.com/
2. Select translation: "WEB" (World English Bible)
3. Navigate to specific chapter (e.g., "Matthew 1")
4. Copy verse text
5. Use INSERT SQL template provided

#### **Option C: Hybrid Approach (Recommended)**

1. Use automated script for bulk fetching (run overnight)
2. Manually verify and fix any missing verses
3. Execute SQL in batches (one Gospel at a time)

### Step 3: Execute SQL in Supabase

```sql
-- Example for Matthew Chapter 1
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, created_at)
VALUES
(1, 'your-chapter-uuid-here', 1, 'The book of the generation of Jesus Christ...', 'Matthew 1:1', 'WEB', NOW()),
(1, 'your-chapter-uuid-here', 2, 'Abraham became the father of Isaac...', 'Matthew 1:2', 'WEB', NOW());
-- ... continue for all verses
```

## Verse Count Reference

| Gospel   | Chapters | Verses | Status |
|----------|----------|--------|--------|
| Matthew  | 28       | 1,071  | ⏳ Pending |
| Mark     | 16       | 678    | ⏳ Pending |
| Luke     | 24       | 1,151  | ⏳ Pending |
| John     | 21       | 879    | ⏳ Pending |
| **Total**| **89**   | **3,779** | |

## Progress Tracking

Update this checklist as you populate verses:

### Matthew (28 chapters)
- [ ] Matthew 1-5 (sample chapters)
- [ ] Matthew 6-10
- [ ] Matthew 11-15
- [ ] Matthew 16-20
- [ ] Matthew 21-25
- [ ] Matthew 26-28

### Mark (16 chapters)
- [ ] Mark 1-5
- [ ] Mark 6-10
- [ ] Mark 11-16

### Luke (24 chapters)
- [ ] Luke 1-6
- [ ] Luke 7-12
- [ ] Luke 13-18
- [ ] Luke 19-24

### John (21 chapters)
- [ ] John 1-7
- [ ] John 8-14
- [ ] John 15-21

## Verification

After population, verify verse counts:

```sql
SELECT
    g.name as gospel,
    COUNT(DISTINCT gv.chapter_id) as chapters_with_verses,
    COUNT(*) as total_verses
FROM gospels g
LEFT JOIN gospel_verses gv ON g.gospel_id = gv.gospel_id
GROUP BY g.gospel_id, g.name
ORDER BY g.gospel_id;
```

Expected results:
- Matthew: 28 chapters, ~1,071 verses
- Mark: 16 chapters, ~678 verses
- Luke: 24 chapters, ~1,151 verses
- John: 21 chapters, ~879 verses

## Troubleshooting

### Rate Limiting (HTTP 429)
- **Solution**: Increase delay between requests (use 2-5 second delays)
- **Alternative**: Use Bible Gateway manual copy-paste for specific chapters

### Missing Verses
- **Check**: Verify chapter UUID is correct
- **Check**: Ensure verse_number matches actual verse count for that chapter
- **Solution**: Query chapter to see existing verses

### Database Errors
- **FK Constraint**: Verify chapter_id exists in gospel_chapters table
- **Unique Violation**: Check if verse already exists for that chapter+verse_number

## License & Attribution

When using Bible text:
- **WEB (World English Bible)**: Public Domain - No attribution required
- **KJV (King James Version)**: Public Domain - No attribution required
- **ESV**: Requires attribution for ESV API usage (see ESV.org for details)

## Support

For issues:
1. Check Supabase logs for SQL errors
2. Verify API is accessible: `curl https://bible-api.com/john+3:16`
3. Review Python script logs for detailed error messages
