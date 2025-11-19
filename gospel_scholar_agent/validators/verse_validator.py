"""
Verse Validator - Cross-validates Gospel verses across multiple sources
"""

from typing import List, Dict, Optional
from Levenshtein import ratio
from sources.base_source import BaseBibleSource, VerseData


class VerseValidator:
    """
    Validates Gospel verses by comparing across multiple authoritative sources.
    Calculates similarity scores and identifies discrepancies.
    """

    def __init__(self, sources: List[BaseBibleSource]):
        """
        Initialize validator with list of Bible sources.

        Args:
            sources: List of BaseBibleSource implementations
        """
        self.sources = [s for s in sources if s.is_available]
        self.min_sources = 2  # Minimum sources needed for validation

    def validate_verse(self, gospel: str, chapter: int, verse: int,
                      translation: str = "NIV") -> Dict:
        """
        Validate a single verse across all available sources.

        Args:
            gospel: Gospel name (Matthew, Mark, Luke, John)
            chapter: Chapter number
            verse: Verse number
            translation: Preferred translation

        Returns:
            Dictionary containing validation results
        """
        if len(self.sources) < self.min_sources:
            return {
                'valid': False,
                'error': f'Insufficient sources (need {self.min_sources}, have {len(self.sources)})',
                'reference': f"{gospel} {chapter}:{verse}"
            }

        # Fetch verse from all sources
        verse_data = {}
        errors = {}

        for source in self.sources:
            try:
                data = source.fetch_verse(gospel, chapter, verse, translation)
                if data:
                    verse_data[source.name] = data
                else:
                    errors[source.name] = "Verse not found"
            except Exception as e:
                errors[source.name] = str(e)

        if len(verse_data) < self.min_sources:
            return {
                'valid': False,
                'error': f'Could not fetch from enough sources',
                'sources_found': len(verse_data),
                'sources_required': self.min_sources,
                'errors': errors,
                'reference': f"{gospel} {chapter}:{verse}"
            }

        # Calculate similarity scores
        similarity_matrix = self._calculate_similarity_matrix(verse_data)

        # Get consensus text (most common or highest average similarity)
        consensus_text, consensus_source = self._get_consensus(verse_data, similarity_matrix)

        # Calculate average similarity score
        avg_similarity = self._calculate_average_similarity(similarity_matrix)

        # Identify discrepancies
        discrepancies = self._find_discrepancies(verse_data, similarity_matrix, threshold=0.8)

        # Calculate quality score (0-100)
        quality_score = self._calculate_quality_score(
            avg_similarity,
            len(verse_data),
            discrepancies
        )

        return {
            'valid': True,
            'reference': f"{gospel} {chapter}:{verse}",
            'gospel': gospel,
            'chapter': chapter,
            'verse': verse,
            'translation': translation,
            'consensus_text': consensus_text,
            'consensus_source': consensus_source,
            'quality_score': quality_score,
            'average_similarity': avg_similarity,
            'sources_checked': len(verse_data),
            'verse_data': {name: data.text for name, data in verse_data.items()},
            'similarity_matrix': similarity_matrix,
            'discrepancies': discrepancies,
            'errors': errors
        }

    def validate_verses_batch(self, verses: List[tuple],
                             translation: str = "NIV") -> List[Dict]:
        """
        Validate multiple verses in batch.

        Args:
            verses: List of (gospel, chapter, verse) tuples
            translation: Preferred translation

        Returns:
            List of validation results
        """
        results = []
        for gospel, chapter, verse in verses:
            result = self.validate_verse(gospel, chapter, verse, translation)
            results.append(result)
        return results

    def _calculate_similarity_matrix(self, verse_data: Dict[str, VerseData]) -> Dict:
        """
        Calculate pairwise similarity scores between all source texts.
        Uses Levenshtein ratio for text similarity.
        """
        sources = list(verse_data.keys())
        matrix = {}

        for i, source1 in enumerate(sources):
            for source2 in sources[i:]:
                text1 = verse_data[source1].text
                text2 = verse_data[source2].text

                # Calculate similarity using Levenshtein ratio (0.0 to 1.0)
                similarity = ratio(text1.lower(), text2.lower())

                key = f"{source1}↔{source2}"
                matrix[key] = similarity

        return matrix

    def _calculate_average_similarity(self, similarity_matrix: Dict) -> float:
        """Calculate average similarity across all source pairs."""
        if not similarity_matrix:
            return 0.0

        similarities = [score for score in similarity_matrix.values()]
        return sum(similarities) / len(similarities)

    def _get_consensus(self, verse_data: Dict[str, VerseData],
                      similarity_matrix: Dict) -> tuple:
        """
        Determine consensus text based on highest average similarity.

        Returns:
            Tuple of (consensus_text, source_name)
        """
        sources = list(verse_data.keys())
        best_source = None
        best_avg = 0.0

        for source in sources:
            # Calculate average similarity for this source with all others
            similarities = []
            for key, score in similarity_matrix.items():
                if source in key:
                    similarities.append(score)

            if similarities:
                avg = sum(similarities) / len(similarities)
                if avg > best_avg:
                    best_avg = avg
                    best_source = source

        if best_source:
            return verse_data[best_source].text, best_source

        # Fallback to first source
        first_source = sources[0]
        return verse_data[first_source].text, first_source

    def _find_discrepancies(self, verse_data: Dict[str, VerseData],
                           similarity_matrix: Dict, threshold: float = 0.8) -> List[Dict]:
        """
        Identify significant discrepancies between sources.

        Args:
            verse_data: Verse data from all sources
            similarity_matrix: Pairwise similarity scores
            threshold: Similarity threshold (pairs below this are discrepancies)

        Returns:
            List of discrepancy dictionaries
        """
        discrepancies = []

        for key, score in similarity_matrix.items():
            if score < threshold:
                sources = key.split('↔')
                if len(sources) == 2:
                    discrepancies.append({
                        'source1': sources[0],
                        'source2': sources[1],
                        'similarity': score,
                        'text1': verse_data[sources[0]].text,
                        'text2': verse_data[sources[1]].text,
                        'severity': self._classify_severity(score)
                    })

        return discrepancies

    def _classify_severity(self, similarity: float) -> str:
        """Classify discrepancy severity based on similarity score."""
        if similarity >= 0.8:
            return 'low'
        elif similarity >= 0.6:
            return 'medium'
        elif similarity >= 0.4:
            return 'high'
        else:
            return 'critical'

    def _calculate_quality_score(self, avg_similarity: float,
                                 num_sources: int,
                                 discrepancies: List[Dict]) -> int:
        """
        Calculate overall quality score (0-100) for the verse.

        Scoring breakdown:
        - Accuracy (40 pts): Average similarity across sources
        - Source coverage (30 pts): Number of sources validated
        - Consistency (30 pts): Penalty for discrepancies
        """
        # Accuracy score (0-40)
        accuracy_score = int(avg_similarity * 40)

        # Source coverage score (0-30)
        # 2 sources = 15 pts, 3 sources = 22 pts, 4+ sources = 30 pts
        if num_sources >= 4:
            coverage_score = 30
        elif num_sources == 3:
            coverage_score = 22
        elif num_sources == 2:
            coverage_score = 15
        else:
            coverage_score = 0

        # Consistency score (0-30)
        # Subtract points for each discrepancy based on severity
        consistency_score = 30
        for disc in discrepancies:
            severity = disc['severity']
            if severity == 'critical':
                consistency_score -= 10
            elif severity == 'high':
                consistency_score -= 6
            elif severity == 'medium':
                consistency_score -= 3
            else:  # low
                consistency_score -= 1

        consistency_score = max(0, consistency_score)  # Don't go negative

        total_score = accuracy_score + coverage_score + consistency_score
        return min(100, total_score)  # Cap at 100
