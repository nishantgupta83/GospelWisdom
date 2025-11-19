"""Quality Scorer - Calculates quality scores for Gospel content"""

from typing import Dict, List


class QualityScorer:
    """Calculates and aggregates quality scores for Gospel validation"""

    def score_verse(self, validation_result: Dict) -> int:
        """Calculate verse quality score from validation result"""
        return validation_result.get('quality_score', 0)

    def score_chapter(self, validation_result: Dict) -> int:
        """Calculate chapter quality score from validation result"""
        return validation_result.get('quality_score', 0)

    def aggregate_scores(self, verse_results: List[Dict]) -> Dict:
        """Aggregate multiple verse/chapter scores"""
        if not verse_results:
            return {'average': 0, 'min': 0, 'max': 0, 'total': 0}

        scores = [r.get('quality_score', 0) for r in verse_results if r.get('valid')]

        return {
            'average': sum(scores) / len(scores) if scores else 0,
            'min': min(scores) if scores else 0,
            'max': max(scores) if scores else 0,
            'total': len(scores),
            'passed': len([s for s in scores if s >= 70]),
            'failed': len([s for s in scores if s < 70])
        }

    def calculate_gospel_score(self, chapter_scores: Dict) -> int:
        """Calculate overall Gospel book quality score"""
        scores = [c.get('quality_score', 0) for c in chapter_scores.values() if c.get('valid')]
        return int(sum(scores) / len(scores)) if scores else 0
