"""
Base Bible Source Class
Defines interface for all Bible content sources
"""

from abc import ABC, abstractmethod
from typing import Dict, List, Optional
from dataclasses import dataclass


@dataclass
class VerseData:
    """Standard verse data structure"""
    gospel: str  # Matthew, Mark, Luke, John
    chapter: int
    verse: int
    text: str
    translation: str = "NIV"
    reference: str = ""  # e.g., "John 3:16"
    source: str = ""  # Source name

    def __post_init__(self):
        if not self.reference:
            self.reference = f"{self.gospel} {self.chapter}:{self.verse}"


@dataclass
class ChapterData:
    """Standard chapter data structure"""
    gospel: str
    chapter: int
    title: Optional[str] = None
    summary: Optional[str] = None
    theme: Optional[str] = None
    verse_count: int = 0
    verses: List[VerseData] = None
    source: str = ""

    def __post_init__(self):
        if self.verses is None:
            self.verses = []


class BaseBibleSource(ABC):
    """
    Abstract base class for Bible content sources.
    All source implementations must inherit from this class.
    """

    def __init__(self, name: str):
        self.name = name
        self.is_available = False
        self._initialize()

    @abstractmethod
    def _initialize(self):
        """
        Initialize the source (API connection, file loading, etc.)
        Set self.is_available = True if successful
        """
        pass

    @abstractmethod
    def fetch_verse(self, gospel: str, chapter: int, verse: int,
                   translation: str = "NIV") -> Optional[VerseData]:
        """
        Fetch a single verse.

        Args:
            gospel: Gospel name (Matthew, Mark, Luke, John)
            chapter: Chapter number
            verse: Verse number
            translation: Bible translation code (NIV, KJV, ESV, etc.)

        Returns:
            VerseData object or None if not found
        """
        pass

    @abstractmethod
    def fetch_chapter(self, gospel: str, chapter: int,
                     translation: str = "NIV") -> Optional[ChapterData]:
        """
        Fetch an entire chapter with all verses.

        Args:
            gospel: Gospel name
            chapter: Chapter number
            translation: Bible translation code

        Returns:
            ChapterData object or None if not found
        """
        pass

    def fetch_verses_range(self, gospel: str, chapter: int,
                          start_verse: int, end_verse: int,
                          translation: str = "NIV") -> List[VerseData]:
        """
        Fetch a range of verses (optional, with default implementation).

        Args:
            gospel: Gospel name
            chapter: Chapter number
            start_verse: Starting verse number
            end_verse: Ending verse number
            translation: Bible translation code

        Returns:
            List of VerseData objects
        """
        verses = []
        for verse_num in range(start_verse, end_verse + 1):
            verse = self.fetch_verse(gospel, chapter, verse_num, translation)
            if verse:
                verses.append(verse)
        return verses

    def validate_gospel(self, gospel: str) -> bool:
        """
        Validate if gospel name is one of the 4 canonical Gospels.
        """
        valid_gospels = ["Matthew", "Mark", "Luke", "John"]
        return gospel in valid_gospels

    def normalize_gospel_name(self, gospel: str) -> str:
        """
        Normalize gospel name to standard format.
        """
        gospel_map = {
            "matthew": "Matthew",
            "matt": "Matthew",
            "mt": "Matthew",
            "mark": "Mark",
            "mk": "Mark",
            "luke": "Luke",
            "lk": "Luke",
            "john": "John",
            "jn": "John",
            "jhn": "John",
        }
        return gospel_map.get(gospel.lower(), gospel)

    def get_source_info(self) -> Dict:
        """
        Get information about this source.
        """
        return {
            "name": self.name,
            "available": self.is_available,
            "type": self.__class__.__name__
        }

    def __repr__(self):
        status = "✓" if self.is_available else "✗"
        return f"{status} {self.name}"
