"""
Supabase Source - Reads Gospel content from GospelWisdom Supabase database
"""

import os
from typing import Optional, List
from supabase import create_client, Client
from .base_source import BaseBibleSource, VerseData, ChapterData


class SupabaseSource(BaseBibleSource):
    """
    Reads Gospel verses and chapters from Supabase database.
    """

    def __init__(self, config: dict = None):
        self.config = config or {}
        self.client: Optional[Client] = None
        self.gospel_name_map = {
            "Matthew": 1,
            "Mark": 2,
            "Luke": 3,
            "John": 4
        }
        super().__init__("GospelWisdom Supabase Database")

    def _initialize(self):
        """Initialize Supabase client"""
        try:
            url = self.config.get('SUPABASE_URL') or os.getenv('SUPABASE_URL')
            key = self.config.get('SUPABASE_KEY') or os.getenv('SUPABASE_KEY')

            if not url or not key:
                raise ValueError("Supabase URL and KEY must be provided")

            self.client = create_client(url, key)
            self.is_available = True
        except Exception as e:
            print(f"Failed to initialize Supabase: {e}")
            self.is_available = False

    def _get_gospel_id(self, gospel: str) -> Optional[int]:
        """Convert gospel name to ID"""
        normalized = self.normalize_gospel_name(gospel)
        return self.gospel_name_map.get(normalized)

    def fetch_verse(self, gospel: str, chapter: int, verse: int,
                   translation: str = "NIV") -> Optional[VerseData]:
        """
        Fetch a single verse from Supabase.
        """
        if not self.is_available:
            return None

        try:
            gospel_id = self._get_gospel_id(gospel)
            if not gospel_id:
                return None

            # Get chapter ID first
            chapter_response = self.client.table('gospel_chapters')\
                .select('id')\
                .eq('gospel_id', gospel_id)\
                .eq('chapter_number', chapter)\
                .execute()

            if not chapter_response.data:
                return None

            chapter_id = chapter_response.data[0]['id']

            # Fetch verse with translation fallback
            verse_response = self.client.rpc(
                'get_gospel_verses_with_translation',
                {
                    'p_gospel_id': gospel_id,
                    'p_chapter_number': chapter,
                    'p_translation_code': translation
                }
            ).eq('verse_number', verse).execute()

            if not verse_response.data:
                return None

            verse_data = verse_response.data[0]
            return VerseData(
                gospel=gospel,
                chapter=chapter,
                verse=verse,
                text=verse_data['text'],
                translation=translation,
                reference=verse_data['reference'],
                source=self.name
            )

        except Exception as e:
            print(f"Error fetching verse from Supabase: {e}")
            return None

    def fetch_chapter(self, gospel: str, chapter: int,
                     translation: str = "NIV") -> Optional[ChapterData]:
        """
        Fetch an entire chapter from Supabase.
        """
        if not self.is_available:
            return None

        try:
            gospel_id = self._get_gospel_id(gospel)
            if not gospel_id:
                return None

            # Get chapter metadata
            chapter_response = self.client.table('gospel_chapters')\
                .select('*')\
                .eq('gospel_id', gospel_id)\
                .eq('chapter_number', chapter)\
                .execute()

            if not chapter_response.data:
                return None

            chapter_info = chapter_response.data[0]

            # Get all verses for this chapter
            verses_response = self.client.rpc(
                'get_gospel_verses_with_translation',
                {
                    'p_gospel_id': gospel_id,
                    'p_chapter_number': chapter,
                    'p_translation_code': translation
                }
            ).execute()

            verses = []
            if verses_response.data:
                verses = [
                    VerseData(
                        gospel=gospel,
                        chapter=chapter,
                        verse=v['verse_number'],
                        text=v['text'],
                        translation=translation,
                        reference=v['reference'],
                        source=self.name
                    )
                    for v in verses_response.data
                ]

            return ChapterData(
                gospel=gospel,
                chapter=chapter,
                title=chapter_info.get('title'),
                summary=chapter_info.get('summary'),
                theme=chapter_info.get('theme'),
                verse_count=chapter_info.get('verse_count', 0),
                verses=verses,
                source=self.name
            )

        except Exception as e:
            print(f"Error fetching chapter from Supabase: {e}")
            return None

    def get_all_gospels(self) -> List[dict]:
        """Get all Gospel books from database"""
        if not self.is_available:
            return []

        try:
            response = self.client.table('gospels').select('*').execute()
            return response.data
        except Exception as e:
            print(f"Error fetching gospels: {e}")
            return []

    def get_chapters_for_gospel(self, gospel: str) -> List[dict]:
        """Get all chapters for a specific Gospel"""
        if not self.is_available:
            return []

        try:
            gospel_id = self._get_gospel_id(gospel)
            if not gospel_id:
                return []

            response = self.client.table('gospel_chapters')\
                .select('*')\
                .eq('gospel_id', gospel_id)\
                .order('chapter_number')\
                .execute()

            return response.data
        except Exception as e:
            print(f"Error fetching chapters: {e}")
            return []
