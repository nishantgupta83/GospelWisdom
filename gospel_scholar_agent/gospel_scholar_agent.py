#!/usr/bin/env python3
"""
Gospel Scholar Validation Agent
Validates Gospel content in Supabase against authoritative Bible sources.
"""

import argparse
import sys
from pathlib import Path
from datetime import datetime
from dotenv import load_dotenv
from colorama import init, Fore

# Initialize colorama
init(autoreset=True)

# Load environment variables
load_dotenv()

from sources import SupabaseSource, BibleOrgAPISource, ESVAPISource
from validators import VerseValidator, ChapterValidator, SpecialCharValidator
from reporters import QualityScorer, ReportGenerator


class GospelScholarAgent:
    """Main agent for validating Gospel content"""

    def __init__(self, config: dict = None):
        self.config = config or {}
        print(f"{Fore.CYAN}{'='*80}")
        print(f"{Fore.CYAN}GOSPEL SCHOLAR VALIDATION AGENT")
        print(f"{Fore.CYAN}{'='*80}\n")

        # Initialize sources
        self.supabase_source = SupabaseSource(config)
        self.sources = self._initialize_sources()

        # Initialize validators
        self.verse_validator = VerseValidator(self.sources)
        self.chapter_validator = ChapterValidator(self.sources)
        self.special_char_validator = SpecialCharValidator()

        # Initialize reporters
        self.quality_scorer = QualityScorer()
        self.report_generator = ReportGenerator()

    def _initialize_sources(self):
        """Initialize all Bible sources"""
        sources = []

        try:
            bible_org = BibleOrgAPISource(self.config)
            if bible_org.is_available:
                sources.append(bible_org)
                print(f"{Fore.GREEN}✓ Bible.org API initialized")
        except Exception as e:
            print(f"{Fore.YELLOW}⚠ Bible.org API unavailable: {e}")

        try:
            esv = ESVAPISource(self.config)
            if esv.is_available:
                sources.append(esv)
                print(f"{Fore.GREEN}✓ ESV API initialized")
        except Exception as e:
            print(f"{Fore.YELLOW}⚠ ESV API unavailable: {e}")

        if len(sources) < 2:
            print(f"{Fore.RED}⚠ Warning: Less than 2 sources available. Results may be less reliable.")

        return sources

    def validate_verse(self, gospel: str, chapter: int, verse: int):
        """Validate a single verse"""
        print(f"\n{Fore.CYAN}Validating {gospel} {chapter}:{verse}...")

        result = self.verse_validator.validate_verse(gospel, chapter, verse)

        if result.get('valid'):
            score = result['quality_score']
            color = Fore.GREEN if score >= 80 else Fore.YELLOW if score >= 60 else Fore.RED
            print(f"{color}Quality Score: {score}/100")
        else:
            print(f"{Fore.RED}Validation failed: {result.get('error')}")

        return result

    def validate_chapter(self, gospel: str, chapter: int):
        """Validate an entire chapter"""
        print(f"\n{Fore.CYAN}Validating {gospel} Chapter {chapter}...")

        result = self.chapter_validator.validate_chapter(gospel, chapter)

        if result.get('valid'):
            score = result['quality_score']
            color = Fore.GREEN if score >= 80 else Fore.YELLOW if score >= 60 else Fore.RED
            print(f"{color}Quality Score: {score}/100")
            print(f"Expected verses: {result['expected_verse_count']}")
        else:
            print(f"{Fore.RED}Validation failed: {result.get('error')}")

        return result

    def validate_gospel(self, gospel: str):
        """Validate entire Gospel"""
        print(f"\n{Fore.CYAN}Validating Gospel of {gospel}...")

        result = self.chapter_validator.validate_gospel_structure(gospel)

        if result.get('valid', True):
            score = result.get('overall_score', 0)
            color = Fore.GREEN if score >= 80 else Fore.YELLOW if score >= 60 else Fore.RED
            print(f"{color}Overall Score: {score}/100")
            print(f"Chapters validated: {result['total_chapters']}")
        else:
            print(f"{Fore.RED}Validation failed: {result.get('error')}")

        return result

    def generate_report(self, results: dict):
        """Generate validation reports"""
        print(f"\n{Fore.CYAN}Generating reports...")

        json_report = self.report_generator.generate_json_report(results)
        print(f"{Fore.GREEN}✓ JSON report: {json_report}")

        html_report = self.report_generator.generate_html_report(results)
        print(f"{Fore.GREEN}✓ HTML dashboard: {html_report}")

        return {
            'json': json_report,
            'html': html_report
        }


def main():
    parser = argparse.ArgumentParser(description='Gospel Scholar Validation Agent')
    parser.add_argument('--mode', choices=['verse', 'chapter', 'gospel', 'full'],
                       default='full', help='Validation mode')
    parser.add_argument('--gospel', default='John', help='Gospel name')
    parser.add_argument('--chapter', type=int, default=3, help='Chapter number')
    parser.add_argument('--verse', type=int, default=16, help='Verse number')

    args = parser.parse_args()

    agent = GospelScholarAgent()

    if args.mode == 'verse':
        result = agent.validate_verse(args.gospel, args.chapter, args.verse)
    elif args.mode == 'chapter':
        result = agent.validate_chapter(args.gospel, args.chapter)
    elif args.mode == 'gospel':
        result = agent.validate_gospel(args.gospel)
    else:  # full
        result = {'overall_score': 0, 'sources': [s.name for s in agent.sources]}

    agent.generate_report(result)

    print(f"\n{Fore.CYAN}{'='*80}")
    print(f"{Fore.GREEN}Validation complete!")
    print(f"{Fore.CYAN}{'='*80}\n")


if __name__ == '__main__':
    main()
