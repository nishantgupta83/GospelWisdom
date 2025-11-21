#!/usr/bin/env python3
"""
Generate SQL to populate Gospel verses using Bible Gateway or local data.

This script creates a complete SQL file to populate all Gospel verses.
Since APIs have rate limits, we'll create a template SQL that you can fill in
by copying verses from Bible Gateway (biblegateway.com) which is free and credible.

Source: Bible Gateway (https://www.biblegateway.com/)
- Free to use for personal/non-commercial purposes
- Multiple translations available (KJV, NIV, ESV, NLT, etc.)
- Public Domain: World English Bible (WEB), King James Version (KJV)
"""

from datetime import datetime

# Gospel structure
GOSPELS = {
    1: ('Matthew', 28, [25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 58, 36, 39, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20]),
    2: ('Mark', 16, [45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20]),
    3: ('Luke', 24, [80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 71, 56, 53]),
    4: ('John', 21, [51, 25, 36, 54, 47, 71, 53, 59, 41, 42, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25])
}

def generate_sql_template():
    """Generate SQL template with instructions"""

    sql_file = "/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/supabase/migrations/2025_11_20_populate_gospel_verses.sql"

    with open(sql_file, 'w') as f:
        f.write(f"""-- ============================================================================
-- POPULATE ALL GOSPEL VERSES
-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- Source: Bible Gateway (https://www.biblegateway.com/) - Public Domain WEB/KJV
--
-- INSTRUCTIONS:
-- 1. First, get chapter UUIDs by running this in Supabase:
--    SELECT gospel_id, chapter_number, id FROM gospel_chapters
--    ORDER BY gospel_id, chapter_number;
--
-- 2. Replace {'{CHAPTER_UUID_Matthew_1}'} placeholders below with actual UUIDs
--
-- 3. For verses, you can:
--    a) Use the Python script with slower rate limiting
--    b) Copy-paste from Bible Gateway (https://www.biblegateway.com/)
--    c) Use the provided sample verses and expand manually
--
-- Total: 89 chapters, ~3,779 verses across 4 Gospels
-- ============================================================================

BEGIN;

-- Clear existing verses (optional - comment out if you want to keep existing data)
-- DELETE FROM gospel_verses;

""")

        total_chapters = 0
        total_verses_count = 0

        for gospel_id, (gospel_name, chapter_count, verse_counts) in GOSPELS.items():
            f.write(f"\n-- {'='*76}\n")
            f.write(f"-- {gospel_name.upper()} - {chapter_count} chapters, {sum(verse_counts)} verses\n")
            f.write(f"-- {'='*76}\n\n")

            for chapter_num in range(1, chapter_count + 1):
                verse_count = verse_counts[chapter_num - 1]
                total_verses_count += verse_count
                total_chapters += 1

                f.write(f"\n-- {gospel_name} Chapter {chapter_num} ({verse_count} verses)\n")
                f.write(f"-- Source: https://www.biblegateway.com/passage/?search={gospel_name}%20{chapter_num}&version=WEB\n\n")

                # Generate INSERT statements with placeholders
                for verse_num in range(1, verse_count + 1):
                    reference = f"{gospel_name} {chapter_num}:{verse_num}"
                    chapter_uuid_placeholder = f"{{CHAPTER_UUID_{gospel_name}_{chapter_num}}}"

                    # Create sample verse text as placeholder
                    verse_text_placeholder = f"[VERSE TEXT FOR {reference} - Copy from Bible Gateway]"

                    f.write(f"""INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, created_at)
VALUES ({gospel_id}, '{chapter_uuid_placeholder}', {verse_num}, '{verse_text_placeholder}', '{reference}', 'WEB', NOW());
""")

                f.write("\n")

        f.write("\nCOMMIT;\n\n")
        f.write(f"-- Summary:\n")
        f.write(f"-- Total Gospels: 4\n")
        f.write(f"-- Total Chapters: {total_chapters}\n")
        f.write(f"-- Total Verses: {total_verses_count}\n")

    print(f"✅ SQL template generated: {sql_file}")
    print(f"\n📊 Statistics:")
    print(f"   - Total chapters: {total_chapters}")
    print(f"   - Total verses: {total_verses_count}")
    print(f"\n📝 Next steps:")
    print(f"   1. Get chapter UUIDs from Supabase SQL editor:")
    print(f"      SELECT gospel_id, chapter_number, id FROM gospel_chapters ORDER BY gospel_id, chapter_number;")
    print(f"   2. Replace UUID placeholders in the SQL file")
    print(f"   3. Fill in verse texts from Bible Gateway or use automation script")
    print(f"   4. Execute the SQL in Supabase")

def main():
    print("📖 Generating Gospel Verses SQL Template")
    print("=" * 80)
    generate_sql_template()

if __name__ == "__main__":
    main()
