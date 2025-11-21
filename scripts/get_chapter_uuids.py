#!/usr/bin/env python3
"""
Fetch chapter UUIDs from Supabase database.
This script connects to your Supabase instance and retrieves all chapter UUIDs.
"""

import os
import json
from supabase import create_client, Client

# Supabase credentials
SUPABASE_URL = "https://zcxyvsnfffiapwarcmht.supabase.co"
SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InpjeHl2c25mZmZpYXB3YXJjbWh0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzI0MTc4NzksImV4cCI6MjA0Nzk5Mzg3OX0.LD3gBXkzxw_B3PV_VdEHUa7uWZRxjlmGxr6EhbPy_NU"

def fetch_chapter_uuids():
    """Fetch all chapter UUIDs from Supabase"""
    try:
        # Create Supabase client
        supabase: Client = create_client(SUPABASE_URL, SUPABASE_ANON_KEY)

        # Fetch all chapters ordered by gospel and chapter number
        response = supabase.table('gospel_chapters')\
            .select('gospel_id, chapter_number, id')\
            .order('gospel_id', desc=False)\
            .order('chapter_number', desc=False)\
            .execute()

        chapters = response.data

        if not chapters:
            print("❌ No chapters found in database")
            return None

        # Create dictionary mapping (gospel_id, chapter_number) -> uuid
        chapter_uuids = {}
        for chapter in chapters:
            key = (chapter['gospel_id'], chapter['chapter_number'])
            chapter_uuids[key] = chapter['id']

        print(f"✅ Found {len(chapters)} chapters")
        return chapter_uuids

    except Exception as e:
        print(f"❌ Error fetching chapters: {e}")
        return None

def generate_python_dict(chapter_uuids):
    """Generate Python dictionary code"""
    lines = ["CHAPTER_UUIDS = {"]

    gospel_names = {1: 'Matthew', 2: 'Mark', 3: 'Luke', 4: 'John'}
    current_gospel = None

    for (gospel_id, chapter_num), uuid in sorted(chapter_uuids.items()):
        if gospel_id != current_gospel:
            if current_gospel is not None:
                lines.append("")
            current_gospel = gospel_id
            lines.append(f"    # {gospel_names[gospel_id]}")

        lines.append(f"    ({gospel_id}, {chapter_num}): '{uuid}',")

    lines.append("}")

    return '\n'.join(lines)

def main():
    print("📖 Fetching chapter UUIDs from Supabase...")
    print("=" * 80)

    chapter_uuids = fetch_chapter_uuids()

    if chapter_uuids:
        # Generate Python dict
        python_code = generate_python_dict(chapter_uuids)

        # Save to file
        output_file = "/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts/chapter_uuids.py"
        with open(output_file, 'w') as f:
            f.write(f"""# Chapter UUIDs fetched from Supabase
# Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}

from datetime import datetime

{python_code}
""")

        print(f"\n✅ Chapter UUIDs saved to: {output_file}")
        print(f"\n📋 Summary:")
        print(f"   - Total chapters: {len(chapter_uuids)}")
        print(f"   - Matthew: {sum(1 for (gid, _) in chapter_uuids.keys() if gid == 1)} chapters")
        print(f"   - Mark: {sum(1 for (gid, _) in chapter_uuids.keys() if gid == 2)} chapters")
        print(f"   - Luke: {sum(1 for (gid, _) in chapter_uuids.keys() if gid == 3)} chapters")
        print(f"   - John: {sum(1 for (gid, _) in chapter_uuids.keys() if gid == 4)} chapters")

        print(f"\n📝 Next steps:")
        print(f"   1. Copy the CHAPTER_UUIDS dict from {output_file}")
        print(f"   2. Paste it into fetch_gospel_verses.py")
        print(f"   3. Run: python3 fetch_gospel_verses.py")

    else:
        print("❌ Failed to fetch chapter UUIDs")

if __name__ == "__main__":
    from datetime import datetime
    main()
