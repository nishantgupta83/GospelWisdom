"""
Bible.org API Source - Fetches Gospel content from Bible.org API (NET Bible)
API Documentation: https://scripture.api.bible/
"""

import os
import requests
from typing import Optional
from .base_source import BaseBibleSource, VerseData, ChapterData


class BibleOrgAPISource(BaseBibleSource):
    """
    Fetches Gospel verses from Bible.org API (scripture.api.bible).
    Provides access to NET Bible (New English Translation) and other versions.
    """

    def __init__(self, config: dict = None):
        self.config = config or {}
        self.api_key = None
        self.base_url = "https://api.scripture.api.bible/v1"
        self.bible_id = "de4e12af7f28f599-02"  # NET Bible ID
        self.session = requests.Session()

        # Gospel name to book ID mapping
        self.gospel_book_ids = {
            "Matthew": "MAT",
            "Mark": "MRK",
            "Luke": "LUK",
            "John": "JHN"
        }

        super().__init__("Bible.org API (NET Bible)")

    def _initialize(self):
        """Initialize API client with authentication"""
        try:
            self.api_key = self.config.get('BIBLE_ORG_API_KEY') or \
                          os.getenv('BIBLE_ORG_API_KEY')

            if not self.api_key:
                print("Warning: No Bible.org API key found. Will use limited access.")
                # Note: Some public endpoints may work without key
                self.is_available = False
                return

            self.session.headers.update({
                'api-key': self.api_key,
                'accept': 'application/json'
            })

            # Test connection
            response = self.session.get(f"{self.base_url}/bibles")
            if response.status_code == 200:
                self.is_available = True
            else:
                print(f"Bible.org API returned status {response.status_code}")
                self.is_available = False

        except Exception as e:
            print(f"Failed to initialize Bible.org API: {e}")
            self.is_available = False

    def _get_book_id(self, gospel: str) -> Optional[str]:
        """Get Bible.org book ID for gospel"""
        normalized = self.normalize_gospel_name(gospel)
        return self.gospel_book_ids.get(normalized)

    def fetch_verse(self, gospel: str, chapter: int, verse: int,
                   translation: str = "NIV") -> Optional[VerseData]:
        """
        Fetch a single verse from Bible.org API.
        Note: This API uses NET Bible as primary source.
        """
        if not self.is_available:
            return None

        try:
            book_id = self._get_book_id(gospel)
            if not book_id:
                return None

            # Construct verse ID (e.g., "JHN.3.16" for John 3:16)
            verse_id = f"{book_id}.{chapter}.{verse}"

            url = f"{self.base_url}/bibles/{self.bible_id}/verses/{verse_id}"
            response = self.session.get(url, params={'content-type': 'text'})

            if response.status_code != 200:
                return None

            data = response.json()
            verse_text = data.get('data', {}).get('content', '').strip()

            if not verse_text:
                return None

            # Clean up HTML tags if present
            verse_text = self._clean_html(verse_text)

            return VerseData(
                gospel=gospel,
                chapter=chapter,
                verse=verse,
                text=verse_text,
                translation="NET",  # Bible.org primarily uses NET
                reference=data.get('data', {}).get('reference', f"{gospel} {chapter}:{verse}"),
                source=self.name
            )

        except Exception as e:
            print(f"Error fetching verse from Bible.org: {e}")
            return None

    def fetch_chapter(self, gospel: str, chapter: int,
                     translation: str = "NIV") -> Optional[ChapterData]:
        """
        Fetch an entire chapter from Bible.org API.
        """
        if not self.is_available:
            return None

        try:
            book_id = self._get_book_id(gospel)
            if not book_id:
                return None

            # Construct chapter ID (e.g., "JHN.3" for John chapter 3)
            chapter_id = f"{book_id}.{chapter}"

            url = f"{self.base_url}/bibles/{self.bible_id}/chapters/{chapter_id}"
            response = self.session.get(url, params={'content-type': 'text'})

            if response.status_code != 200:
                return None

            data = response.json()
            chapter_content = data.get('data', {}).get('content', '')

            # Parse verses from chapter content
            # Note: This is a simplified parser. Real implementation would be more robust.
            verses = self._parse_chapter_verses(gospel, chapter, chapter_content)

            return ChapterData(
                gospel=gospel,
                chapter=chapter,
                title=None,  # Bible.org API may not provide chapter titles
                summary=None,
                theme=None,
                verse_count=len(verses),
                verses=verses,
                source=self.name
            )

        except Exception as e:
            print(f"Error fetching chapter from Bible.org: {e}")
            return None

    def _parse_chapter_verses(self, gospel: str, chapter: int,
                             content: str) -> list:
        """
        Parse individual verses from chapter content.
        This is a simplified implementation.
        """
        verses = []
        # TODO: Implement proper verse parsing from chapter content
        # For now, return empty list and fetch verses individually
        return verses

    def _clean_html(self, text: str) -> str:
        """Remove HTML tags from text"""
        import re
        # Simple HTML tag removal
        clean_text = re.sub(r'<[^>]+>', '', text)
        # Clean up extra whitespace
        clean_text = re.sub(r'\s+', ' ', clean_text).strip()
        return clean_text

    def get_available_bibles(self) -> list:
        """Get list of available Bible versions from the API"""
        if not self.is_available:
            return []

        try:
            url = f"{self.base_url}/bibles"
            response = self.session.get(url)

            if response.status_code == 200:
                data = response.json()
                return data.get('data', [])
            return []

        except Exception as e:
            print(f"Error fetching Bible list: {e}")
            return []
