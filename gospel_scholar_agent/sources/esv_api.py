"""
ESV API Source - Fetches Gospel content from ESV (English Standard Version) API
API Documentation: https://api.esv.org/docs/
"""

import os
import requests
from typing import Optional, List
from .base_source import BaseBibleSource, VerseData, ChapterData


class ESVAPISource(BaseBibleSource):
    """
    Fetches Gospel verses from ESV API.
    ESV is a popular literal translation preferred by many churches.
    """

    def __init__(self, config: dict = None):
        self.config = config or {}
        self.api_key = None
        self.base_url = "https://api.esv.org/v3/passage"
        self.session = requests.Session()

        # Gospel name to book abbreviation mapping
        self.gospel_books = {
            "Matthew": "Matthew",
            "Mark": "Mark",
            "Luke": "Luke",
            "John": "John"
        }

        super().__init__("ESV API (English Standard Version)")

    def _initialize(self):
        """Initialize ESV API client with authentication"""
        try:
            self.api_key = self.config.get('ESV_API_KEY') or \
                          os.getenv('ESV_API_KEY')

            if not self.api_key:
                print("Warning: No ESV API key found.")
                self.is_available = False
                return

            self.session.headers.update({
                'Authorization': f'Token {self.api_key}',
                'Accept': 'application/json'
            })

            # Test connection with a simple verse
            response = self.session.get(
                f"{self.base_url}/text/",
                params={'q': 'John 3:16', 'include-passage-references': False}
            )

            if response.status_code == 200:
                self.is_available = True
            else:
                print(f"ESV API returned status {response.status_code}")
                self.is_available = False

        except Exception as e:
            print(f"Failed to initialize ESV API: {e}")
            self.is_available = False

    def _build_reference(self, gospel: str, chapter: int, verse: int) -> str:
        """Build ESV API reference string (e.g., 'John 3:16')"""
        book = self.gospel_books.get(gospel, gospel)
        return f"{book} {chapter}:{verse}"

    def fetch_verse(self, gospel: str, chapter: int, verse: int,
                   translation: str = "ESV") -> Optional[VerseData]:
        """
        Fetch a single verse from ESV API.
        """
        if not self.is_available:
            return None

        try:
            reference = self._build_reference(gospel, chapter, verse)

            params = {
                'q': reference,
                'include-headings': False,
                'include-footnotes': False,
                'include-verse-numbers': False,
                'include-short-copyright': False,
                'include-passage-references': False
            }

            response = self.session.get(f"{self.base_url}/text/", params=params)

            if response.status_code != 200:
                return None

            data = response.json()
            passages = data.get('passages', [])

            if not passages:
                return None

            verse_text = passages[0].strip()

            # Clean up extra whitespace
            verse_text = ' '.join(verse_text.split())

            return VerseData(
                gospel=gospel,
                chapter=chapter,
                verse=verse,
                text=verse_text,
                translation="ESV",
                reference=reference,
                source=self.name
            )

        except Exception as e:
            print(f"Error fetching verse from ESV API: {e}")
            return None

    def fetch_chapter(self, gospel: str, chapter: int,
                     translation: str = "ESV") -> Optional[ChapterData]:
        """
        Fetch an entire chapter from ESV API.
        """
        if not self.is_available:
            return None

        try:
            book = self.gospel_books.get(gospel, gospel)
            reference = f"{book} {chapter}"

            params = {
                'q': reference,
                'include-headings': True,
                'include-footnotes': False,
                'include-verse-numbers': True,
                'include-short-copyright': False,
                'include-passage-references': False
            }

            response = self.session.get(f"{self.base_url}/text/", params=params)

            if response.status_code != 200:
                return None

            data = response.json()
            passages = data.get('passages', [])

            if not passages:
                return None

            chapter_text = passages[0]

            # Parse individual verses from chapter text
            verses = self._parse_verses(gospel, chapter, chapter_text)

            return ChapterData(
                gospel=gospel,
                chapter=chapter,
                title=None,
                summary=None,
                theme=None,
                verse_count=len(verses),
                verses=verses,
                source=self.name
            )

        except Exception as e:
            print(f"Error fetching chapter from ESV API: {e}")
            return None

    def _parse_verses(self, gospel: str, chapter: int, chapter_text: str) -> List[VerseData]:
        """
        Parse individual verses from chapter text.
        ESV API returns verses with verse numbers embedded in text.
        """
        import re

        verses = []

        # Split by verse numbers (e.g., [1], [2], [3])
        # ESV API includes verse numbers like: "[1] In the beginning..."
        verse_pattern = r'\[(\d+)\]\s*([^\[]+)'
        matches = re.findall(verse_pattern, chapter_text)

        for verse_num, verse_text in matches:
            verse_text = verse_text.strip()
            if verse_text:
                verses.append(VerseData(
                    gospel=gospel,
                    chapter=chapter,
                    verse=int(verse_num),
                    text=verse_text,
                    translation="ESV",
                    reference=f"{gospel} {chapter}:{verse_num}",
                    source=self.name
                ))

        return verses

    def fetch_verses_range(self, gospel: str, chapter: int,
                          start_verse: int, end_verse: int,
                          translation: str = "ESV") -> List[VerseData]:
        """
        Fetch a range of verses efficiently using ESV API.
        """
        if not self.is_available:
            return []

        try:
            book = self.gospel_books.get(gospel, gospel)
            reference = f"{book} {chapter}:{start_verse}-{end_verse}"

            params = {
                'q': reference,
                'include-headings': False,
                'include-footnotes': False,
                'include-verse-numbers': True,
                'include-short-copyright': False,
                'include-passage-references': False
            }

            response = self.session.get(f"{self.base_url}/text/", params=params)

            if response.status_code != 200:
                return []

            data = response.json()
            passages = data.get('passages', [])

            if not passages:
                return []

            # Parse verses from the passage
            verses = self._parse_verses(gospel, chapter, passages[0])

            # Filter to only requested range
            verses = [v for v in verses if start_verse <= v.verse <= end_verse]

            return verses

        except Exception as e:
            print(f"Error fetching verse range from ESV API: {e}")
            return []

    def search_text(self, query: str, page_size: int = 20) -> List[VerseData]:
        """
        Search for text across ESV Bible.
        """
        if not self.is_available:
            return []

        try:
            params = {
                'q': query,
                'page-size': page_size,
                'include-passage-references': True
            }

            response = self.session.get(f"{self.base_url}/search/", params=params)

            if response.status_code != 200:
                return []

            data = response.json()
            # Note: Search results would need parsing
            # This is a placeholder for the search functionality
            return []

        except Exception as e:
            print(f"Error searching ESV API: {e}")
            return []
