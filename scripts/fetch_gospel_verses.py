#!/usr/bin/env python3
"""
Fetch all Gospel verses from free, credible Bible API sources.

Sources:
1. Bible API (bible-api.com) - Public domain, free, World English Bible (WEB) translation
2. API.Bible (api.bible) - Free tier available, multiple translations including KJV, NIV
3. Crossway ESV API - Free for non-commercial use

This script fetches verses from the 4 Gospels:
- Matthew: 28 chapters, 1071 verses
- Mark: 16 chapters, 678 verses
- Luke: 24 chapters, 1151 verses
- John: 21 chapters, 879 verses
Total: 89 chapters, 3779 verses
"""

import requests
import json
import time
from datetime import datetime

# Gospel structure: (gospel_id, name, chapters, verse_counts_per_chapter)
GOSPELS = {
    1: {
        'name': 'Matthew',
        'chapters': 28,
        'verse_counts': [25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 58, 36, 39, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20]
    },
    2: {
        'name': 'Mark',
        'chapters': 16,
        'verse_counts': [45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20]
    },
    3: {
        'name': 'Luke',
        'chapters': 24,
        'verse_counts': [80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 71, 56, 53]
    },
    4: {
        'name': 'John',
        'chapters': 21,
        'verse_counts': [51, 25, 36, 54, 47, 71, 53, 59, 41, 42, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25]
    }
}

def fetch_verses_from_bible_api(book, chapter):
    """
    Fetch verses from bible-api.com (World English Bible - public domain)
    API: https://bible-api.com/{book}+{chapter}
    """
    url = f"https://bible-api.com/{book}+{chapter}"
    try:
        response = requests.get(url, timeout=10)
        if response.status_code == 200:
            data = response.json()
            verses = []

            # Parse verses from the response
            if 'verses' in data:
                for verse_data in data['verses']:
                    verses.append({
                        'verse_number': verse_data['verse'],
                        'text': verse_data['text'].strip(),
                        'reference': f"{book} {chapter}:{verse_data['verse']}"
                    })

            return verses
        else:
            print(f"❌ Failed to fetch {book} {chapter}: HTTP {response.status_code}")
            return None
    except Exception as e:
        print(f"❌ Error fetching {book} {chapter}: {e}")
        return None

def generate_sql_insert(gospel_id, gospel_name, chapter_number, verses, chapter_uuid):
    """Generate SQL INSERT statements for verses"""
    sql_lines = []
    sql_lines.append(f"\n-- {gospel_name} Chapter {chapter_number} ({len(verses)} verses)")

    for verse in verses:
        verse_text = verse['text'].replace("'", "''")  # Escape single quotes
        reference = verse['reference']
        verse_num = verse['verse_number']

        # Generate themes and keywords based on content
        themes = generate_themes(verse_text)
        keywords = generate_keywords(verse_text)

        sql = f"""INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES ({gospel_id}, '{chapter_uuid}', {verse_num}, '{verse_text}', '{reference}', 'WEB', ARRAY{themes}::TEXT[], ARRAY{keywords}::TEXT[], NOW());"""

        sql_lines.append(sql)

    return '\n'.join(sql_lines)

def generate_themes(text):
    """Generate thematic tags based on verse content"""
    themes = []
    text_lower = text.lower()

    # Common Gospel themes
    theme_keywords = {
        'Faith': ['faith', 'believe', 'trust'],
        'Love': ['love', 'beloved', 'charity'],
        'Salvation': ['salvation', 'saved', 'eternal life'],
        'Prayer': ['pray', 'prayer', 'ask', 'petition'],
        'Kingdom': ['kingdom', 'heaven', 'king'],
        'Forgiveness': ['forgive', 'forgiveness', 'mercy'],
        'Teaching': ['teach', 'taught', 'rabbi', 'master'],
        'Miracle': ['miracle', 'heal', 'healed', 'raised'],
        'Prophecy': ['prophet', 'prophesy', 'fulfill'],
        'Discipleship': ['disciple', 'follow', 'follower'],
        'Holy Spirit': ['spirit', 'holy spirit', 'comforter'],
        'Righteousness': ['righteous', 'righteousness', 'holy'],
        'Grace': ['grace', 'gracious', 'mercy'],
        'Truth': ['truth', 'true', 'truly'],
        'Witness': ['witness', 'testify', 'testimony']
    }

    for theme, keywords in theme_keywords.items():
        if any(keyword in text_lower for keyword in keywords):
            themes.append(theme)

    return themes if themes else ['General']

def generate_keywords(text):
    """Generate searchable keywords from verse text"""
    # Extract meaningful words (exclude common words)
    stop_words = {'the', 'a', 'an', 'and', 'or', 'but', 'in', 'on', 'at', 'to', 'for',
                  'of', 'with', 'by', 'from', 'up', 'about', 'into', 'through', 'during'}

    words = text.lower().replace('.', ' ').replace(',', ' ').replace('!', ' ').replace('?', ' ').split()
    keywords = [word for word in words if len(word) > 3 and word not in stop_words]

    # Return top 10 unique keywords
    return list(set(keywords))[:10]

def main():
    """Main function to fetch all Gospel verses and generate SQL"""
    print("📖 Fetching Gospel verses from bible-api.com (World English Bible - Public Domain)")
    print("=" * 80)

    # This will store chapter UUIDs - you need to get these from your database
    # For now, we'll use placeholders
    print("\n⚠️  NOTE: You need to run a query in Supabase to get chapter UUIDs:")
    print("SELECT gospel_id, chapter_number, id FROM gospel_chapters ORDER BY gospel_id, chapter_number;")
    print("\nThen update the CHAPTER_UUIDS dictionary in this script.\n")

    # Placeholder for chapter UUIDs - YOU MUST UPDATE THIS
    CHAPTER_UUIDS = {}
    # Example format:
    # CHAPTER_UUIDS = {
    #     (1, 1): 'uuid-for-matthew-1',
    #     (1, 2): 'uuid-for-matthew-2',
    #     ...
    # }

    sql_file = f"/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/supabase/migrations/2025_11_20_populate_all_gospel_verses.sql"

    with open(sql_file, 'w') as f:
        f.write(f"""-- ============================================================================
-- POPULATE ALL GOSPEL VERSES
-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
-- Source: bible-api.com (World English Bible - Public Domain)
-- Total: 89 chapters, ~3,779 verses across 4 Gospels
-- ============================================================================

BEGIN;

-- Clear existing verses (if any)
DELETE FROM gospel_verses WHERE translation_code = 'WEB';

""")

        total_verses = 0

        for gospel_id, gospel_info in GOSPELS.items():
            gospel_name = gospel_info['name']
            chapters = gospel_info['chapters']

            print(f"\n📕 Fetching {gospel_name} ({chapters} chapters)...")

            for chapter_num in range(1, chapters + 1):
                print(f"  ⏳ Fetching {gospel_name} {chapter_num}...", end=' ')

                verses = fetch_verses_from_bible_api(gospel_name, chapter_num)

                if verses:
                    print(f"✅ {len(verses)} verses")
                    total_verses += len(verses)

                    # You need to provide the actual chapter UUID
                    chapter_key = (gospel_id, chapter_num)
                    chapter_uuid = CHAPTER_UUIDS.get(chapter_key, f'{{CHAPTER_UUID_{gospel_name}_{chapter_num}}}')

                    sql = generate_sql_insert(gospel_id, gospel_name, chapter_num, verses, chapter_uuid)
                    f.write(sql + '\n')
                else:
                    print(f"❌ Failed")

                # Rate limiting - be respectful to the API
                time.sleep(0.5)

        f.write("\nCOMMIT;\n")
        f.write(f"\n-- Total verses inserted: {total_verses}\n")

    print("\n" + "=" * 80)
    print(f"✅ SQL file generated: {sql_file}")
    print(f"📊 Total verses: {total_verses}")
    print("\n⚠️  IMPORTANT: Before running this SQL:")
    print("1. Get chapter UUIDs from Supabase")
    print("2. Update CHAPTER_UUIDS in this script")
    print("3. Re-run this script to generate correct SQL")
    print("4. Then execute the SQL file in Supabase")

if __name__ == "__main__":
    main()
