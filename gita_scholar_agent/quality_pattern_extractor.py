#!/usr/bin/env python3
"""
Quality Pattern Extractor for GitaWisdom Scenarios
==================================================
Analyzes high-quality scenarios to extract style, tone, and structure patterns.

Outputs:
- Sample of 20 diverse high-quality scenarios
- Field-by-field analysis (word counts, tone, structure)
- Before/after examples for improvement
"""

import os
import json
from collections import defaultdict
from supabase import create_client, Client
from typing import List, Dict, Any

# Load environment variables
from dotenv import load_dotenv
load_dotenv('/Users/nishantgupta/Documents/GitaGyan/OldWisdom/.env.development')

SUPABASE_URL = os.getenv('SUPABASE_URL')
SUPABASE_KEY = os.getenv('SUPABASE_ANON_KEY')

if not SUPABASE_URL or not SUPABASE_KEY:
    raise Exception("Missing Supabase credentials")

supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)

def fetch_diverse_quality_scenarios() -> List[Dict[str, Any]]:
    """Fetch 20 scenarios from different categories with good action steps."""
    print("Fetching diverse high-quality scenarios...")

    categories = [
        'Health & Wellness',
        'Parenting & Family',
        'Personal Growth',
        'Work & Career',
        'Relationships',
        'Modern Living',
        'Social & Community',
        'Life Transitions',
        'Education & Learning',
        'Financial'
    ]

    scenarios = []

    for category in categories:
        # Get 2-3 scenarios per category
        response = supabase.table('scenarios') \
            .select('*') \
            .eq('sc_category', category) \
            .limit(3) \
            .execute()

        if response.data:
            scenarios.extend(response.data)
            print(f"  {category}: {len(response.data)} scenarios")

    print(f"\nTotal quality scenarios fetched: {len(scenarios)}")
    return scenarios

def analyze_field_patterns(scenarios: List[Dict[str, Any]]) -> Dict[str, Any]:
    """Analyze patterns in each field."""

    analysis = {
        'title': {
            'word_counts': [],
            'formats': [],
            'tones': []
        },
        'description': {
            'word_counts': [],
            'paragraph_counts': [],
            'tones': []
        },
        'heart_response': {
            'word_counts': [],
            'opening_phrases': [],
            'tones': []
        },
        'duty_response': {
            'word_counts': [],
            'opening_phrases': [],
            'tones': []
        },
        'gita_wisdom': {
            'verse_citation_formats': [],
            'interpretation_lengths': []
        },
        'action_steps': {
            'step_counts': [],
            'avg_step_length': [],
            'tone_patterns': []
        }
    }

    for scenario in scenarios:
        # Title analysis
        title = scenario.get('sc_title', '')
        analysis['title']['word_counts'].append(len(title.split()))
        if title:
            # Check format
            if title[0].isupper() and '?' not in title:
                analysis['title']['formats'].append('declarative')
            elif '?' in title:
                analysis['title']['formats'].append('question')
            else:
                analysis['title']['formats'].append('phrase')

        # Description analysis
        description = scenario.get('sc_description', '')
        analysis['description']['word_counts'].append(len(description.split()))
        analysis['description']['paragraph_counts'].append(description.count('\n\n') + 1)

        # Heart response analysis
        heart = scenario.get('sc_heart_response', '')
        analysis['heart_response']['word_counts'].append(len(heart.split()))
        if heart:
            first_sentence = heart.split('.')[0].strip()
            analysis['heart_response']['opening_phrases'].append(first_sentence[:50])

        # Duty response analysis
        duty = scenario.get('sc_duty_response', '')
        analysis['duty_response']['word_counts'].append(len(duty.split()))
        if duty:
            first_sentence = duty.split('.')[0].strip()
            analysis['duty_response']['opening_phrases'].append(first_sentence[:50])

        # Gita wisdom analysis
        wisdom = scenario.get('sc_gita_wisdom', '')
        if wisdom:
            # Extract verse citation format
            if 'Chapter' in wisdom or 'Ch' in wisdom:
                analysis['gita_wisdom']['verse_citation_formats'].append('chapter-verse')
            analysis['gita_wisdom']['interpretation_lengths'].append(len(wisdom.split()))

        # Action steps analysis
        steps = scenario.get('sc_action_steps', [])
        if isinstance(steps, list):
            analysis['action_steps']['step_counts'].append(len(steps))
            if steps:
                avg_length = sum(len(step.split()) for step in steps) / len(steps)
                analysis['action_steps']['avg_step_length'].append(int(avg_length))

    return analysis

def calculate_statistics(analysis: Dict[str, Any]) -> Dict[str, Any]:
    """Calculate statistics from analysis."""

    stats = {}

    for field, data in analysis.items():
        stats[field] = {}

        for metric, values in data.items():
            if values and isinstance(values[0], (int, float)):
                stats[field][metric] = {
                    'min': min(values),
                    'max': max(values),
                    'avg': sum(values) / len(values),
                    'median': sorted(values)[len(values) // 2]
                }
            elif values and isinstance(values[0], str):
                # For text fields, show diversity
                unique_count = len(set(values))
                stats[field][metric] = {
                    'total_samples': len(values),
                    'unique_patterns': unique_count,
                    'diversity_ratio': unique_count / len(values) if values else 0
                }

    return stats

def extract_best_examples(scenarios: List[Dict[str, Any]]) -> List[Dict[str, Any]]:
    """Extract best examples for each field."""

    best_examples = {
        'title': [],
        'description': [],
        'heart_response': [],
        'duty_response': [],
        'gita_wisdom': [],
        'action_steps': []
    }

    # Sort scenarios by different criteria
    for scenario in scenarios:
        title = scenario.get('sc_title', '')
        if title and len(title.split()) >= 5 and len(title.split()) <= 12:
            best_examples['title'].append({
                'text': title,
                'category': scenario.get('sc_category'),
                'word_count': len(title.split())
            })

        description = scenario.get('sc_description', '')
        if description and len(description.split()) >= 150 and len(description.split()) <= 250:
            best_examples['description'].append({
                'text': description[:200] + '...',
                'category': scenario.get('sc_category'),
                'word_count': len(description.split())
            })

        heart = scenario.get('sc_heart_response', '')
        if heart and len(heart.split()) >= 100:
            best_examples['heart_response'].append({
                'text': heart[:200] + '...',
                'category': scenario.get('sc_category'),
                'word_count': len(heart.split())
            })

        duty = scenario.get('sc_duty_response', '')
        if duty and len(duty.split()) >= 100:
            best_examples['duty_response'].append({
                'text': duty[:200] + '...',
                'category': scenario.get('sc_category'),
                'word_count': len(duty.split())
            })

        wisdom = scenario.get('sc_gita_wisdom', '')
        if wisdom and 'Chapter' in wisdom:
            best_examples['gita_wisdom'].append({
                'text': wisdom[:200] + '...',
                'category': scenario.get('sc_category')
            })

        steps = scenario.get('sc_action_steps', [])
        if isinstance(steps, list) and len(steps) == 5:
            # Check for conversational tone (avoid robotic AI phrases)
            robotic_phrases = [
                'Remember to', "It's important to", 'Consider seeking',
                "Don't forget to", 'Make sure to', 'Try to'
            ]
            is_conversational = not any(
                phrase in step for step in steps for phrase in robotic_phrases
            )
            if is_conversational:
                best_examples['action_steps'].append({
                    'steps': steps,
                    'category': scenario.get('sc_category'),
                    'conversational': True
                })

    # Limit to top 5 examples per field
    for field in best_examples:
        best_examples[field] = best_examples[field][:5]

    return best_examples

def identify_anti_patterns(scenarios: List[Dict[str, Any]]) -> Dict[str, List[str]]:
    """Identify what NOT to do (anti-patterns)."""

    anti_patterns = {
        'title': [],
        'action_steps': [],
        'general': []
    }

    robotic_phrases = [
        'Remember to', "It's important to", 'Consider seeking',
        "Don't forget to", 'Make sure to', 'Try to', 'Be sure to',
        'You should', 'You need to', 'You must'
    ]

    for scenario in scenarios:
        # Check titles
        title = scenario.get('sc_title', '')
        if title:
            if len(title.split()) > 15:
                anti_patterns['title'].append(f"Too long ({len(title.split())} words): {title[:50]}...")
            if title.isupper():
                anti_patterns['title'].append(f"All caps: {title[:50]}")

        # Check action steps for robotic language
        steps = scenario.get('sc_action_steps', [])
        if isinstance(steps, list):
            for step in steps:
                for phrase in robotic_phrases:
                    if phrase in step:
                        anti_patterns['action_steps'].append(f"Robotic phrase '{phrase}': {step[:60]}...")
                        break

    # Remove duplicates
    for field in anti_patterns:
        anti_patterns[field] = list(set(anti_patterns[field]))[:10]  # Top 10

    return anti_patterns

def main():
    """Main execution function."""
    print("=" * 70)
    print("QUALITY PATTERN EXTRACTOR")
    print("=" * 70)
    print()

    # Fetch scenarios
    scenarios = fetch_diverse_quality_scenarios()

    # Analyze patterns
    print("\n" + "=" * 70)
    print("ANALYZING FIELD PATTERNS")
    print("=" * 70)
    analysis = analyze_field_patterns(scenarios)

    # Calculate statistics
    stats = calculate_statistics(analysis)

    print("\nField Statistics:")
    for field, metrics in stats.items():
        print(f"\n{field.upper()}:")
        for metric, values in metrics.items():
            print(f"  {metric}: {values}")

    # Extract best examples
    print("\n" + "=" * 70)
    print("EXTRACTING BEST EXAMPLES")
    print("=" * 70)
    best_examples = extract_best_examples(scenarios)

    for field, examples in best_examples.items():
        print(f"\n{field.upper()} ({len(examples)} examples)")

    # Identify anti-patterns
    print("\n" + "=" * 70)
    print("IDENTIFYING ANTI-PATTERNS")
    print("=" * 70)
    anti_patterns = identify_anti_patterns(scenarios)

    for field, patterns in anti_patterns.items():
        if patterns:
            print(f"\n{field.upper()} ({len(patterns)} patterns):")
            for pattern in patterns[:3]:
                print(f"  - {pattern}")

    # Export results
    output = {
        'scenarios_analyzed': len(scenarios),
        'sample_scenarios': scenarios[:20],  # Top 20 for review
        'field_statistics': stats,
        'best_examples': best_examples,
        'anti_patterns': anti_patterns,
        'raw_analysis': analysis
    }

    output_file = '/Users/nishantgupta/Documents/GitaGyan/OldWisdom/gita_scholar_agent/output/quality_pattern_analysis.json'
    print(f"\n\nExporting analysis to {output_file}...")
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(output, f, indent=2, ensure_ascii=False)

    print("\n" + "=" * 70)
    print("QUALITY PATTERN EXTRACTION COMPLETE!")
    print("=" * 70)
    print(f"\nAnalyzed {len(scenarios)} scenarios")
    print(f"Output: {output_file}")
    print()

if __name__ == '__main__':
    main()
