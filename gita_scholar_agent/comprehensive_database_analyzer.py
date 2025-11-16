#!/usr/bin/env python3
"""
Comprehensive Database Analyzer for GitaWisdom Scenarios
========================================================
Analyzes all 1,226+ scenarios to identify content gaps and patterns.

Outputs:
- Full dataset JSON export
- Category distribution analysis
- Tag frequency distribution
- Chapter distribution analysis
- Search term gap analysis (50+ terms)
"""

import os
import json
from collections import Counter, defaultdict
from datetime import datetime
from supabase import create_client, Client
from typing import List, Dict, Any

# Load environment variables
from dotenv import load_dotenv
load_dotenv('/Users/nishantgupta/Documents/GitaGyan/OldWisdom/.env.development')

SUPABASE_URL = os.getenv('SUPABASE_URL')
SUPABASE_KEY = os.getenv('SUPABASE_ANON_KEY')

if not SUPABASE_URL or not SUPABASE_KEY:
    raise Exception("Missing Supabase credentials in .env.development")

supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)

def fetch_all_scenarios() -> List[Dict[str, Any]]:
    """Fetch ALL scenarios from database with full fields."""
    print("Fetching all scenarios from database...")

    scenarios = []
    page_size = 1000
    offset = 0

    while True:
        response = supabase.table('scenarios') \
            .select('*') \
            .range(offset, offset + page_size - 1) \
            .execute()

        if not response.data:
            break

        scenarios.extend(response.data)
        print(f"  Fetched {len(scenarios)} scenarios so far...")

        if len(response.data) < page_size:
            break

        offset += page_size

    print(f"\nTotal scenarios fetched: {len(scenarios)}")
    return scenarios

def analyze_categories(scenarios: List[Dict[str, Any]]) -> Dict[str, int]:
    """Analyze category distribution."""
    categories = Counter()

    for scenario in scenarios:
        category = scenario.get('sc_category', 'Unknown')
        categories[category] += 1

    return dict(categories.most_common())

def analyze_tags(scenarios: List[Dict[str, Any]]) -> Dict[str, int]:
    """Analyze tag distribution."""
    tags = Counter()

    for scenario in scenarios:
        scenario_tags = scenario.get('sc_tags', [])
        if scenario_tags:
            for tag in scenario_tags:
                tags[tag.strip()] += 1

    return dict(tags.most_common(100))  # Top 100 tags

def analyze_chapters(scenarios: List[Dict[str, Any]]) -> Dict[int, int]:
    """Analyze chapter distribution."""
    chapters = Counter()

    for scenario in scenarios:
        chapter = scenario.get('sc_chapter')
        if chapter:
            chapters[chapter] += 1

    # Ensure all 18 chapters are represented
    chapter_dist = {}
    for i in range(1, 19):
        chapter_dist[i] = chapters.get(i, 0)

    return chapter_dist

def test_search_terms(scenarios: List[Dict[str, Any]]) -> Dict[str, Dict[str, Any]]:
    """Test 50+ search terms and categorize gaps."""

    search_categories = {
        'Physical Health': [
            'hair pull', 'hair loss', 'cant sleep', 'insomnia', 'chronic pain',
            'back pain', 'headache', 'migraine', 'fall down', 'accident',
            'not eating', 'eating disorder', 'anorexia', 'obesity', 'diabetes',
            'cancer', 'heart disease', 'arthritis', 'disability', 'paralysis'
        ],
        'Mental Health': [
            'panic attack', 'anxiety attack', 'suicidal', 'suicide thoughts',
            'PTSD', 'trauma', 'OCD', 'obsessive', 'depression', 'depressed',
            'bipolar', 'schizophrenia', 'psychosis', 'self harm', 'cutting',
            'addiction', 'alcoholic', 'drug abuse', 'therapy', 'medication'
        ],
        'Work/Career': [
            'toxic boss', 'harassment', 'sexual harassment', 'burnout',
            'quit job', 'fired', 'lost job', 'unemployed', 'job search',
            'discrimination', 'racism at work', 'sexism', 'ageism',
            'career change', 'promotion denied', 'underpaid', 'overworked'
        ],
        'Financial': [
            'bankruptcy', 'poverty', 'debt', 'broke', 'homeless',
            'foreclosure', 'eviction', 'loan', 'credit card debt',
            'money problems', 'cant pay bills', 'financial crisis'
        ],
        'Life Events': [
            'death of child', 'child died', 'divorce', 'terminal illness',
            'miscarriage', 'infertility', 'adoption', 'foster care',
            'natural disaster', 'war', 'refugee', 'immigration',
            'incarceration', 'prison', 'legal trouble'
        ]
    }

    results = {}

    for category, terms in search_categories.items():
        results[category] = {}

        for term in terms:
            matching_scenarios = []
            term_lower = term.lower()

            for scenario in scenarios:
                # Search in title, description, and tags
                title = scenario.get('sc_title', '').lower()
                description = scenario.get('sc_description', '').lower()
                tags = ' '.join(scenario.get('sc_tags', [])).lower()

                if term_lower in title or term_lower in description or term_lower in tags:
                    matching_scenarios.append({
                        'id': scenario.get('sc_id'),
                        'title': scenario.get('sc_title'),
                        'category': scenario.get('sc_category')
                    })

            count = len(matching_scenarios)
            priority = 'HIGH' if count <= 2 else ('MEDIUM' if count <= 5 else 'LOW')

            results[category][term] = {
                'count': count,
                'priority': priority,
                'scenarios': matching_scenarios[:3]  # Show top 3 matches
            }

    return results

def analyze_missing_tags(scenarios: List[Dict[str, Any]]) -> List[str]:
    """Identify potentially missing important tags."""

    # Common life situation tags that should exist
    expected_tags = [
        'anxiety', 'depression', 'stress', 'anger', 'fear', 'grief',
        'health', 'illness', 'pain', 'disability',
        'work', 'career', 'job loss', 'unemployment', 'burnout',
        'family', 'marriage', 'divorce', 'parenting', 'children',
        'finance', 'money', 'debt', 'poverty',
        'trauma', 'abuse', 'violence', 'harassment',
        'addiction', 'substance abuse',
        'relationships', 'friendship', 'loneliness', 'isolation',
        'death', 'loss', 'bereavement',
        'identity', 'purpose', 'meaning',
        'injustice', 'discrimination', 'inequality'
    ]

    # Get all existing tags
    existing_tags = set()
    for scenario in scenarios:
        tags = scenario.get('sc_tags', [])
        if tags:
            existing_tags.update([t.lower().strip() for t in tags])

    # Find missing tags
    missing = []
    for tag in expected_tags:
        if tag not in existing_tags:
            missing.append(tag)

    return missing

def generate_gap_summary(search_results: Dict[str, Dict[str, Any]]) -> Dict[str, Any]:
    """Generate high-level gap summary."""

    summary = {
        'high_priority_gaps': [],
        'medium_priority_gaps': [],
        'total_gaps_high': 0,
        'total_gaps_medium': 0,
        'coverage_by_category': {}
    }

    for category, terms in search_results.items():
        high_gaps = []
        medium_gaps = []

        for term, data in terms.items():
            if data['priority'] == 'HIGH':
                high_gaps.append(term)
                summary['total_gaps_high'] += 1
            elif data['priority'] == 'MEDIUM':
                medium_gaps.append(term)
                summary['total_gaps_medium'] += 1

        summary['coverage_by_category'][category] = {
            'high_priority': len(high_gaps),
            'medium_priority': len(medium_gaps),
            'high_gap_terms': high_gaps[:10],  # Top 10
            'medium_gap_terms': medium_gaps[:10]
        }

    # Overall high priority gaps
    for category, terms in search_results.items():
        for term, data in terms.items():
            if data['priority'] == 'HIGH':
                summary['high_priority_gaps'].append({
                    'category': category,
                    'term': term,
                    'count': data['count']
                })

    summary['high_priority_gaps'].sort(key=lambda x: x['count'])

    return summary

def main():
    """Main execution function."""
    print("=" * 70)
    print("COMPREHENSIVE DATABASE ANALYZER")
    print("=" * 70)
    print()

    # Fetch all scenarios
    scenarios = fetch_all_scenarios()

    # Export full dataset
    output_file = '/Users/nishantgupta/Documents/GitaGyan/OldWisdom/gita_scholar_agent/output/full_scenarios_dataset.json'
    print(f"\nExporting full dataset to {output_file}...")
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(scenarios, f, indent=2, ensure_ascii=False)
    print(f"  Exported {len(scenarios)} scenarios")

    # Analyze categories
    print("\n" + "=" * 70)
    print("CATEGORY DISTRIBUTION")
    print("=" * 70)
    categories = analyze_categories(scenarios)
    for category, count in categories.items():
        print(f"  {category}: {count}")

    # Analyze tags
    print("\n" + "=" * 70)
    print("TAG DISTRIBUTION (Top 50)")
    print("=" * 70)
    tags = analyze_tags(scenarios)
    for i, (tag, count) in enumerate(list(tags.items())[:50], 1):
        print(f"  {i}. {tag}: {count}")

    # Analyze chapters
    print("\n" + "=" * 70)
    print("CHAPTER DISTRIBUTION")
    print("=" * 70)
    chapters = analyze_chapters(scenarios)
    for chapter, count in sorted(chapters.items()):
        print(f"  Chapter {chapter}: {count}")

    # Test search terms
    print("\n" + "=" * 70)
    print("TESTING 50+ SEARCH TERMS FOR GAPS")
    print("=" * 70)
    search_results = test_search_terms(scenarios)

    for category, terms in search_results.items():
        print(f"\n{category}:")
        high_priority = [t for t, d in terms.items() if d['priority'] == 'HIGH']
        medium_priority = [t for t, d in terms.items() if d['priority'] == 'MEDIUM']

        if high_priority:
            print(f"  HIGH Priority Gaps ({len(high_priority)}): {', '.join(high_priority[:5])}")
        if medium_priority:
            print(f"  MEDIUM Priority Gaps ({len(medium_priority)}): {', '.join(medium_priority[:5])}")

    # Analyze missing tags
    print("\n" + "=" * 70)
    print("POTENTIALLY MISSING TAGS")
    print("=" * 70)
    missing_tags = analyze_missing_tags(scenarios)
    if missing_tags:
        print(f"  Found {len(missing_tags)} expected tags not in database:")
        for tag in missing_tags[:20]:
            print(f"    - {tag}")
    else:
        print("  All expected tags are present!")

    # Generate gap summary
    gap_summary = generate_gap_summary(search_results)

    # Export analysis results
    analysis_output = {
        'metadata': {
            'analysis_date': datetime.now().isoformat(),
            'total_scenarios': len(scenarios),
            'total_categories': len(categories),
            'total_unique_tags': len(tags),
            'search_terms_tested': sum(len(terms) for terms in search_results.values())
        },
        'category_distribution': categories,
        'tag_distribution': tags,
        'chapter_distribution': chapters,
        'search_term_results': search_results,
        'gap_summary': gap_summary,
        'missing_tags': missing_tags
    }

    analysis_file = '/Users/nishantgupta/Documents/GitaGyan/OldWisdom/gita_scholar_agent/output/database_analysis_results.json'
    print(f"\n\nExporting analysis results to {analysis_file}...")
    with open(analysis_file, 'w', encoding='utf-8') as f:
        json.dump(analysis_output, f, indent=2, ensure_ascii=False)

    print("\n" + "=" * 70)
    print("ANALYSIS COMPLETE!")
    print("=" * 70)
    print(f"\nFiles created:")
    print(f"  1. {output_file}")
    print(f"  2. {analysis_file}")
    print(f"\nGap Summary:")
    print(f"  - HIGH Priority Gaps: {gap_summary['total_gaps_high']}")
    print(f"  - MEDIUM Priority Gaps: {gap_summary['total_gaps_medium']}")
    print(f"  - Missing Expected Tags: {len(missing_tags)}")
    print()

if __name__ == '__main__':
    main()
