"""
Chapter Validator - Validates Gospel chapter metadata and structure
"""

from typing import List, Dict, Optional
from sources.base_source import BaseBibleSource, ChapterData


class ChapterValidator:
    """
    Validates Gospel chapter metadata, structure, and verse counts.
    """

    # Expected verse counts for each Gospel chapter
    EXPECTED_VERSE_COUNTS = {
        "Matthew": {
            1: 25, 2: 23, 3: 17, 4: 25, 5: 48, 6: 34, 7: 29, 8: 34, 9: 38, 10: 42,
            11: 30, 12: 50, 13: 58, 14: 36, 15: 39, 16: 28, 17: 27, 18: 35, 19: 30, 20: 34,
            21: 46, 22: 46, 23: 39, 24: 51, 25: 46, 26: 75, 27: 66, 28: 20
        },
        "Mark": {
            1: 45, 2: 28, 3: 35, 4: 41, 5: 43, 6: 56, 7: 37, 8: 38, 9: 50, 10: 52,
            11: 33, 12: 44, 13: 37, 14: 72, 15: 47, 16: 20
        },
        "Luke": {
            1: 80, 2: 52, 3: 38, 4: 44, 5: 39, 6: 49, 7: 50, 8: 56, 9: 62, 10: 42,
            11: 54, 12: 59, 13: 35, 14: 35, 15: 32, 16: 31, 17: 37, 18: 43, 19: 48, 20: 47,
            21: 38, 22: 71, 23: 56, 24: 53
        },
        "John": {
            1: 51, 2: 25, 3: 36, 4: 54, 5: 47, 6: 71, 7: 53, 8: 59, 9: 41, 10: 42,
            11: 57, 12: 50, 13: 38, 14: 31, 15: 27, 16: 33, 17: 26, 18: 40, 19: 42, 20: 31,
            21: 25
        }
    }

    def __init__(self, sources: List[BaseBibleSource]):
        """
        Initialize chapter validator.

        Args:
            sources: List of Bible sources to validate against
        """
        self.sources = [s for s in sources if s.is_available]
        self.min_sources = 1  # Only need 1 source for structure validation

    def validate_chapter(self, gospel: str, chapter: int,
                        translation: str = "NIV") -> Dict:
        """
        Validate a Gospel chapter's metadata and structure.

        Args:
            gospel: Gospel name
            chapter: Chapter number
            translation: Bible translation

        Returns:
            Dictionary containing validation results
        """
        # Get expected verse count
        expected_verses = self._get_expected_verse_count(gospel, chapter)

        if expected_verses is None:
            return {
                'valid': False,
                'error': f'Invalid Gospel chapter: {gospel} {chapter}',
                'reference': f"{gospel} {chapter}"
            }

        # Fetch chapter data from sources
        chapter_data = {}
        errors = {}

        for source in self.sources:
            try:
                data = source.fetch_chapter(gospel, chapter, translation)
                if data:
                    chapter_data[source.name] = data
                else:
                    errors[source.name] = "Chapter not found"
            except Exception as e:
                errors[source.name] = str(e)

        if not chapter_data:
            return {
                'valid': False,
                'error': 'Could not fetch chapter from any source',
                'errors': errors,
                'reference': f"{gospel} {chapter}"
            }

        # Validate verse counts
        verse_count_issues = self._validate_verse_counts(
            chapter_data, expected_verses
        )

        # Validate metadata completeness
        metadata_score = self._validate_metadata(chapter_data)

        # Calculate quality score
        quality_score = self._calculate_chapter_quality(
            verse_count_issues,
            metadata_score,
            len(chapter_data)
        )

        # Get chapter info from first available source
        first_source = list(chapter_data.keys())[0]
        chapter_info = chapter_data[first_source]

        return {
            'valid': True,
            'reference': f"{gospel} {chapter}",
            'gospel': gospel,
            'chapter': chapter,
            'translation': translation,
            'expected_verse_count': expected_verses,
            'actual_verse_counts': {
                source: data.verse_count for source, data in chapter_data.items()
            },
            'verse_count_issues': verse_count_issues,
            'metadata': {
                'title': chapter_info.title,
                'summary': chapter_info.summary,
                'theme': chapter_info.theme,
            },
            'metadata_score': metadata_score,
            'quality_score': quality_score,
            'sources_checked': len(chapter_data),
            'errors': errors
        }

    def validate_gospel_structure(self, gospel: str) -> Dict:
        """
        Validate the entire structure of a Gospel book.

        Args:
            gospel: Gospel name

        Returns:
            Dictionary with validation results for all chapters
        """
        expected_chapters = self.EXPECTED_VERSE_COUNTS.get(gospel, {})

        if not expected_chapters:
            return {
                'valid': False,
                'error': f'Unknown Gospel: {gospel}'
            }

        results = {
            'gospel': gospel,
            'total_chapters': len(expected_chapters),
            'chapters': {},
            'overall_score': 0
        }

        chapter_scores = []

        for chapter_num in expected_chapters.keys():
            result = self.validate_chapter(gospel, chapter_num)
            results['chapters'][chapter_num] = result

            if result.get('valid'):
                chapter_scores.append(result['quality_score'])

        # Calculate overall score
        if chapter_scores:
            results['overall_score'] = sum(chapter_scores) / len(chapter_scores)

        return results

    def _get_expected_verse_count(self, gospel: str, chapter: int) -> Optional[int]:
        """Get expected verse count for a Gospel chapter."""
        gospel_chapters = self.EXPECTED_VERSE_COUNTS.get(gospel, {})
        return gospel_chapters.get(chapter)

    def _validate_verse_counts(self, chapter_data: Dict[str, ChapterData],
                               expected: int) -> List[Dict]:
        """
        Validate verse counts against expected values.

        Returns:
            List of issues found
        """
        issues = []

        for source_name, data in chapter_data.items():
            actual = data.verse_count

            if actual != expected:
                difference = actual - expected
                severity = 'critical' if abs(difference) > 5 else 'medium' if abs(difference) > 2 else 'low'

                issues.append({
                    'source': source_name,
                    'expected': expected,
                    'actual': actual,
                    'difference': difference,
                    'severity': severity
                })

        return issues

    def _validate_metadata(self, chapter_data: Dict[str, ChapterData]) -> int:
        """
        Validate chapter metadata completeness.

        Returns:
            Metadata score (0-100)
        """
        # Get first available chapter data for metadata check
        if not chapter_data:
            return 0

        first_data = list(chapter_data.values())[0]

        score = 0
        total_fields = 3

        # Check title
        if first_data.title and len(first_data.title) > 0:
            score += 1

        # Check summary
        if first_data.summary and len(first_data.summary) > 20:
            score += 1

        # Check theme
        if first_data.theme and len(first_data.theme) > 10:
            score += 1

        return int((score / total_fields) * 100)

    def _calculate_chapter_quality(self, verse_count_issues: List[Dict],
                                   metadata_score: int,
                                   num_sources: int) -> int:
        """
        Calculate overall chapter quality score (0-100).

        Scoring breakdown:
        - Verse count accuracy (40 pts)
        - Metadata completeness (40 pts)
        - Source coverage (20 pts)
        """
        # Verse count accuracy (0-40)
        verse_score = 40
        for issue in verse_count_issues:
            if issue['severity'] == 'critical':
                verse_score -= 15
            elif issue['severity'] == 'medium':
                verse_score -= 8
            else:  # low
                verse_score -= 3
        verse_score = max(0, verse_score)

        # Metadata completeness (0-40)
        metadata_points = int((metadata_score / 100) * 40)

        # Source coverage (0-20)
        if num_sources >= 3:
            coverage_score = 20
        elif num_sources == 2:
            coverage_score = 15
        elif num_sources == 1:
            coverage_score = 10
        else:
            coverage_score = 0

        total = verse_score + metadata_points + coverage_score
        return min(100, total)
