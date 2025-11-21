#!/usr/bin/env python3
"""
Fetch Gospel verses incrementally with proper rate limiting.
This script can be stopped and resumed - it tracks progress.

Usage:
    python3 fetch_gospel_verses_incremental.py            # Fetch all
    python3 fetch_gospel_verses_incremental.py Matthew    # Fetch only Matthew
    python3 fetch_gospel_verses_incremental.py Matthew 1  # Fetch only Matthew chapter 1
"""

import requests
import json
import time
import sys
import os
from datetime import datetime
from pathlib import Path

# Gospel structure
GOSPELS = {
    'Matthew': (1, 28, [25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 58, 36, 39, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20]),
    'Mark': (2, 16, [45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20]),
    'Luke': (3, 24, [80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 71, 56, 53]),
    'John': (4, 21, [51, 25, 36, 54, 47, 71, 53, 59, 41, 42, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25])
}

# Progress file
PROGRESS_FILE = "/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts/.fetch_progress.json"
OUTPUT_DIR = "/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/supabase/migrations/verses"

def load_progress():
    """Load fetch progress"""
    if os.path.exists(PROGRESS_FILE):
        with open(PROGRESS_FILE, 'r') as f:
            return json.load(f)
    return {"completed": [], "failed": []}

def save_progress(progress):
    """Save fetch progress"""
    with open(PROGRESS_FILE, 'w') as f:
        json.dump(progress, f, indent=2)

def fetch_chapter_verses(book, chapter, retry_count=3):
    """Fetch verses for a chapter with retries"""
    for attempt in range(retry_count):
        try:
            url = f"https://bible-api.com/{book}+{chapter}"
            response = requests.get(url, timeout=15)

            if response.status_code == 200:
                data = response.json()
                verses = []

                if 'verses' in data:
                    for verse_data in data['verses']:
                        verses.append({
                            'verse_number': verse_data['verse'],
                            'text': verse_data['text'].strip(),
                            'reference': f"{book} {chapter}:{verse_data['verse']}"
                        })

                return verses, None

            elif response.status_code == 429:
                # Rate limited - wait longer
                wait_time = (attempt + 1) * 10
                print(f"    ⚠️  Rate limited. Waiting {wait_time}s before retry {attempt + 1}/{retry_count}...")
                time.sleep(wait_time)
                continue

            else:
                return None, f"HTTP {response.status_code}"

        except Exception as e:
            if attempt < retry_count - 1:
                print(f"    ⚠️  Error: {e}. Retrying...")
                time.sleep(5)
                continue
            return None, str(e)

    return None, "Max retries exceeded"

def generate_chapter_sql(gospel_id, gospel_name, chapter_num, verses):
    """Generate SQL for a single chapter"""
    if not verses:
        return ""

    lines = []
    lines.append(f"-- {gospel_name} Chapter {chapter_num} ({len(verses)} verses)")
    lines.append(f"-- Source: bible-api.com (WEB translation)")
    lines.append("")

    chapter_uuid_var = f"v_chapter_{gospel_name.lower()}_{chapter_num}"

    # Add SQL to get chapter UUID
    lines.append(f"-- Get chapter UUID for {gospel_name} {chapter_num}")
    lines.append(f"DO $$")
    lines.append(f"DECLARE")
    lines.append(f"    {chapter_uuid_var} UUID;")
    lines.append(f"BEGIN")
    lines.append(f"    SELECT id INTO {chapter_uuid_var}")
    lines.append(f"    FROM gospel_chapters")
    lines.append(f"    WHERE gospel_id = {gospel_id} AND chapter_number = {chapter_num};")
    lines.append(f"")
    lines.append(f"    IF {chapter_uuid_var} IS NULL THEN")
    lines.append(f"        RAISE EXCEPTION 'Chapter not found: {gospel_name} {chapter_num}';")
    lines.append(f"    END IF;")
    lines.append(f"")

    # Insert verses
    for verse in verses:
        text = verse['text'].replace("'", "''")  # Escape single quotes
        reference = verse['reference']
        verse_num = verse['verse_number']

        lines.append(f"    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, created_at)")
        lines.append(f"    VALUES ({gospel_id}, {chapter_uuid_var}, {verse_num}, '{text}', '{reference}', 'WEB', NOW());")

    lines.append(f"END $$;")
    lines.append(f"")

    return '\n'.join(lines)

def fetch_gospel(gospel_name, specific_chapter=None):
    """Fetch all chapters for a gospel or a specific chapter"""
    if gospel_name not in GOSPELS:
        print(f"❌ Unknown gospel: {gospel_name}")
        print(f"Available: {', '.join(GOSPELS.keys())}")
        return False

    gospel_id, chapter_count, verse_counts = GOSPELS[gospel_name]
    progress = load_progress()

    # Determine chapters to fetch
    if specific_chapter:
        chapters_to_fetch = [int(specific_chapter)]
    else:
        chapters_to_fetch = range(1, chapter_count + 1)

    print(f"\n📕 Fetching {gospel_name}")
    print(f"   Chapters: {len(chapters_to_fetch)}")
    print("=" * 80)

    # Create output directory
    os.makedirs(OUTPUT_DIR, exist_ok=True)

    output_file = f"{OUTPUT_DIR}/2025_11_20_{gospel_name.lower()}_verses.sql"

    with open(output_file, 'a') as f:
        if os.path.getsize(output_file) == 0:
            # Write header
            f.write(f"-- {gospel_name} Gospel Verses\n")
            f.write(f"-- Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
            f.write(f"-- Source: bible-api.com (World English Bible - Public Domain)\n")
            f.write(f"--\n\n")
            f.write(f"BEGIN;\n\n")

        for chapter_num in chapters_to_fetch:
            chapter_key = f"{gospel_name}_{chapter_num}"

            if chapter_key in progress['completed']:
                print(f"  ✅ {gospel_name} {chapter_num} (already fetched)")
                continue

            print(f"  ⏳ Fetching {gospel_name} {chapter_num}...", end=' ', flush=True)

            verses, error = fetch_chapter_verses(gospel_name, chapter_num)

            if verses:
                print(f"✅ {len(verses)} verses")

                sql = generate_chapter_sql(gospel_id, gospel_name, chapter_num, verses)
                f.write(sql + '\n\n')
                f.flush()  # Write immediately

                progress['completed'].append(chapter_key)
                save_progress(progress)

                # Rate limiting - be respectful
                time.sleep(2)  # 2 seconds between requests

            else:
                print(f"❌ Failed: {error}")
                progress['failed'].append({"chapter": chapter_key, "error": error})
                save_progress(progress)

                # If rate limited, wait longer
                if "429" in str(error):
                    print(f"    ⏸  Pausing for 30 seconds due to rate limiting...")
                    time.sleep(30)

    # Write footer
    with open(output_file, 'a') as f:
        f.write(f"COMMIT;\n")

    print(f"\n✅ SQL saved to: {output_file}")
    return True

def main():
    """Main entry point"""
    print("📖 Gospel Verses Incremental Fetcher")
    print("=" * 80)

    if len(sys.argv) == 1:
        # Fetch all gospels
        print("Fetching all Gospels...")
        for gospel_name in GOSPELS.keys():
            if not fetch_gospel(gospel_name):
                break
            print()

    elif len(sys.argv) == 2:
        # Fetch specific gospel
        gospel_name = sys.argv[1].capitalize()
        fetch_gospel(gospel_name)

    elif len(sys.argv) == 3:
        # Fetch specific chapter
        gospel_name = sys.argv[1].capitalize()
        chapter_num = sys.argv[2]
        fetch_gospel(gospel_name, chapter_num)

    else:
        print("Usage:")
        print("  python3 fetch_gospel_verses_incremental.py              # Fetch all")
        print("  python3 fetch_gospel_verses_incremental.py Matthew      # Fetch Matthew")
        print("  python3 fetch_gospel_verses_incremental.py Matthew 1    # Fetch Matthew 1")

    # Show progress
    progress = load_progress()
    total_completed = len(progress['completed'])
    total_failed = len(progress['failed'])
    total_chapters = sum(g[1] for g in GOSPELS.values())

    print(f"\n📊 Progress Summary:")
    print(f"   ✅ Completed: {total_completed}/{total_chapters} chapters")
    print(f"   ❌ Failed: {total_failed} chapters")

    if progress['failed']:
        print(f"\n❌ Failed chapters:")
        for failed in progress['failed']:
            print(f"   - {failed['chapter']}: {failed['error']}")

if __name__ == "__main__":
    main()
