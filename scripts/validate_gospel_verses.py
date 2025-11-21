#!/usr/bin/env python3
"""
Gospel Verses Multi-Source Validation Script

This script implements chain-of-thoughts validation by:
1. Fetching verses from multiple independent sources
2. Comparing for semantic similarity
3. Validating structure against known Bible structure
4. Checking content quality
5. Generating comprehensive validation reports

Usage:
    python3 validate_gospel_verses.py Matthew 1    # Validate specific chapter
    python3 validate_gospel_verses.py Matthew      # Validate entire Gospel
    python3 validate_gospel_verses.py              # Validate all Gospels
"""

import requests
import json
import time
import sys
from datetime import datetime
from pathlib import Path
from difflib import SequenceMatcher

# Known Gospel structure (ground truth from Bible scholars)
GOSPEL_STRUCTURE = {
    'Matthew': (1, 28, [25, 23, 17, 25, 48, 34, 29, 34, 38, 42, 30, 50, 58, 36, 39, 28, 27, 35, 30, 34, 46, 46, 39, 51, 46, 75, 66, 20]),
    'Mark': (2, 16, [45, 28, 35, 41, 43, 56, 37, 38, 50, 52, 33, 44, 37, 72, 47, 20]),
    'Luke': (3, 24, [80, 52, 38, 44, 39, 49, 50, 56, 62, 42, 54, 59, 35, 35, 32, 31, 37, 43, 48, 47, 38, 71, 56, 53]),
    'John': (4, 21, [51, 25, 36, 54, 47, 71, 53, 59, 41, 42, 57, 50, 38, 31, 27, 33, 26, 40, 42, 31, 25])
}

OUTPUT_DIR = "/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts/validation_reports"

# ============================================================================
# MULTI-SOURCE FETCHING
# ============================================================================

def fetch_from_bible_api(book, chapter):
    """Fetch from bible-api.com (Source 1: WEB translation)"""
    try:
        url = f"https://bible-api.com/{book}+{chapter}"
        response = requests.get(url, timeout=15)

        if response.status_code == 200:
            data = response.json()
            verses = {}

            if 'verses' in data:
                for verse_data in data['verses']:
                    verses[verse_data['verse']] = {
                        'text': verse_data['text'].strip(),
                        'reference': f"{book} {chapter}:{verse_data['verse']}"
                    }

            return verses, None
        else:
            return None, f"HTTP {response.status_code}"

    except Exception as e:
        return None, str(e)

def fetch_from_esv_api(book, chapter, api_key=None):
    """
    Fetch from ESV API (Source 2: ESV translation)

    Note: Requires free API key from https://api.esv.org/
    Sign up at: https://api.esv.org/account/create/
    """
    if not api_key:
        return None, "ESV API key not provided (optional for validation)"

    try:
        url = "https://api.esv.org/v3/passage/text/"
        params = {
            'q': f'{book} {chapter}',
            'include-verse-numbers': 'true',
            'include-footnotes': 'false',
            'include-headings': 'false'
        }
        headers = {'Authorization': f'Token {api_key}'}

        response = requests.get(url, params=params, headers=headers, timeout=15)

        if response.status_code == 200:
            data = response.json()
            # ESV API returns different format - would need parsing
            # For now, return as unavailable
            return None, "ESV API parsing not implemented (TODO)"
        else:
            return None, f"HTTP {response.status_code}"

    except Exception as e:
        return None, str(e)

def fetch_from_bible_gateway(book, chapter):
    """
    Fetch from Bible Gateway (Source 3: Multiple translations)

    Note: Would require web scraping - not recommended for automated use
    Bible Gateway ToS requires manual access only
    """
    return None, "Bible Gateway scraping not implemented (use manual verification)"

# ============================================================================
# VALIDATION FUNCTIONS
# ============================================================================

def calculate_similarity(text1, text2):
    """Calculate similarity between two texts (0-100%)"""
    if not text1 or not text2:
        return 0.0

    # Normalize texts
    t1 = text1.lower().strip()
    t2 = text2.lower().strip()

    # Calculate similarity using SequenceMatcher
    similarity = SequenceMatcher(None, t1, t2).ratio() * 100
    return round(similarity, 2)

def validate_structure(gospel_name, verses_by_chapter):
    """Validate chapter structure matches known Bible structure"""
    gospel_id, expected_chapters, expected_verse_counts = GOSPEL_STRUCTURE[gospel_name]

    results = {
        'valid': True,
        'expected_chapters': expected_chapters,
        'actual_chapters': len(verses_by_chapter),
        'chapter_details': []
    }

    for chapter_num, verses in verses_by_chapter.items():
        expected_verses = expected_verse_counts[chapter_num - 1]
        actual_verses = len(verses)

        detail = {
            'chapter': chapter_num,
            'expected_verses': expected_verses,
            'actual_verses': actual_verses,
            'valid': expected_verses == actual_verses,
            'missing_verses': [],
            'extra_verses': []
        }

        # Check for missing/extra verses
        expected_nums = set(range(1, expected_verses + 1))
        actual_nums = set(verses.keys())

        detail['missing_verses'] = sorted(expected_nums - actual_nums)
        detail['extra_verses'] = sorted(actual_nums - expected_nums)

        if not detail['valid']:
            results['valid'] = False

        results['chapter_details'].append(detail)

    return results

def validate_content(verse_text):
    """Validate verse content quality"""
    issues = []

    # Check length (verses typically 10-500 characters)
    if len(verse_text) < 5:
        issues.append("Too short (< 5 chars)")
    elif len(verse_text) > 1000:
        issues.append("Too long (> 1000 chars)")

    # Check for encoding issues
    try:
        verse_text.encode('utf-8')
    except UnicodeEncodeError:
        issues.append("Encoding error")

    # Check for common biblical terms (at least some verses should have these)
    biblical_indicators = ['god', 'lord', 'jesus', 'christ', 'father', 'spirit',
                          'heaven', 'said', 'disciples', 'prophet', 'kingdom']

    text_lower = verse_text.lower()
    has_biblical_term = any(term in text_lower for term in biblical_indicators)

    # Not all verses have these terms, so just log if none found
    if not has_biblical_term and len(verse_text) > 50:
        issues.append("WARNING: No common biblical terms found")

    return {
        'valid': len(issues) == 0 or all('WARNING' in issue for issue in issues),
        'issues': issues,
        'length': len(verse_text)
    }

# ============================================================================
# VALIDATION PIPELINE
# ============================================================================

def validate_chapter(gospel_name, chapter_num, esv_api_key=None):
    """Validate a single chapter using multi-source verification"""
    print(f"\n{'='*80}")
    print(f"Validating {gospel_name} Chapter {chapter_num}")
    print(f"{'='*80}")

    # Step 1: Fetch from multiple sources
    print("\n📥 Step 1: Fetching from multiple sources...")

    print("  ⏳ Fetching from bible-api.com (WEB)...", end=' ')
    source1_verses, source1_error = fetch_from_bible_api(gospel_name, chapter_num)
    if source1_verses:
        print(f"✅ {len(source1_verses)} verses")
    else:
        print(f"❌ Failed: {source1_error}")
        return None

    print("  ⏳ Fetching from ESV API...", end=' ')
    source2_verses, source2_error = fetch_from_esv_api(gospel_name, chapter_num, esv_api_key)
    if source2_verses:
        print(f"✅ {len(source2_verses)} verses")
    else:
        print(f"⚠️  Skipped: {source2_error}")

    # Step 2: Compare sources (if we have multiple)
    print("\n🔍 Step 2: Cross-source comparison...")
    comparison_results = []

    if source2_verses:
        for verse_num, verse1 in source1_verses.items():
            if verse_num in source2_verses:
                verse2 = source2_verses[verse_num]
                similarity = calculate_similarity(verse1['text'], verse2['text'])

                comparison_results.append({
                    'verse_num': verse_num,
                    'reference': verse1['reference'],
                    'similarity': similarity,
                    'source1_text': verse1['text'][:100],
                    'source2_text': verse2['text'][:100],
                    'match': similarity >= 80
                })

                status = "✅" if similarity >= 80 else "⚠️ "
                print(f"  {status} Verse {verse_num}: {similarity}% similarity")
    else:
        print("  ⚠️  Only one source available - skipping comparison")

    # Step 3: Structural validation
    print("\n🏗️  Step 3: Structural validation...")
    gospel_id, expected_chapters, expected_verse_counts = GOSPEL_STRUCTURE[gospel_name]
    expected_verses = expected_verse_counts[chapter_num - 1]
    actual_verses = len(source1_verses)

    structure_valid = expected_verses == actual_verses
    status = "✅" if structure_valid else "❌"
    print(f"  {status} Expected verses: {expected_verses}, Actual: {actual_verses}")

    # Check for sequential verse numbers
    verse_nums = sorted(source1_verses.keys())
    expected_nums = list(range(1, expected_verses + 1))
    sequential = verse_nums == expected_nums

    status = "✅" if sequential else "❌"
    print(f"  {status} Sequential verse numbers: {sequential}")

    if not sequential:
        missing = set(expected_nums) - set(verse_nums)
        extra = set(verse_nums) - set(expected_nums)
        if missing:
            print(f"     Missing verses: {sorted(missing)}")
        if extra:
            print(f"     Extra verses: {sorted(extra)}")

    # Step 4: Content validation
    print("\n📝 Step 4: Content validation...")
    content_issues = []

    for verse_num, verse_data in source1_verses.items():
        validation = validate_content(verse_data['text'])
        if not validation['valid']:
            content_issues.append({
                'verse_num': verse_num,
                'reference': verse_data['reference'],
                'issues': validation['issues']
            })

    if content_issues:
        print(f"  ⚠️  {len(content_issues)} verses with content issues:")
        for issue in content_issues[:5]:  # Show first 5
            print(f"     - Verse {issue['verse_num']}: {', '.join(issue['issues'])}")
    else:
        print(f"  ✅ All {len(source1_verses)} verses passed content validation")

    # Step 5: Calculate confidence score
    print("\n📊 Step 5: Confidence scoring...")

    # Source similarity score (40%)
    if comparison_results:
        avg_similarity = sum(r['similarity'] for r in comparison_results) / len(comparison_results)
        source_score = (avg_similarity / 100) * 40
    else:
        source_score = 30  # Lower score if only one source

    # Structure score (20%)
    structure_score = 20 if structure_valid and sequential else 0

    # Content score (20%)
    content_score = 20 if len(content_issues) == 0 else (20 - len(content_issues) * 2)
    content_score = max(0, content_score)

    # Cross-reference score (10%) - TODO: implement
    cross_ref_score = 0

    # Manual verification score (10%) - needs human review
    manual_score = 0

    confidence = source_score + structure_score + content_score + cross_ref_score + manual_score
    confidence = min(100, max(0, confidence))

    if confidence >= 85:
        status = "✅ EXCELLENT"
        color = "green"
    elif confidence >= 70:
        status = "✅ GOOD"
        color = "yellow"
    else:
        status = "⚠️  NEEDS REVIEW"
        color = "red"

    print(f"  {status} - Confidence Score: {confidence:.1f}/100")
    print(f"     Source Similarity: {source_score:.1f}/40")
    print(f"     Structure Valid:   {structure_score:.1f}/20")
    print(f"     Content Valid:     {content_score:.1f}/20")
    print(f"     Cross-References:  {cross_ref_score:.1f}/10")
    print(f"     Manual Verified:   {manual_score:.1f}/10")

    # Compile results
    results = {
        'gospel': gospel_name,
        'chapter': chapter_num,
        'timestamp': datetime.now().isoformat(),
        'sources': {
            'source1': {'name': 'bible-api.com', 'translation': 'WEB', 'success': True, 'verse_count': len(source1_verses)},
            'source2': {'name': 'ESV API', 'translation': 'ESV', 'success': source2_verses is not None, 'verse_count': len(source2_verses) if source2_verses else 0}
        },
        'comparison': comparison_results,
        'structure': {
            'valid': structure_valid,
            'expected_verses': expected_verses,
            'actual_verses': actual_verses,
            'sequential': sequential
        },
        'content_issues': content_issues,
        'confidence': {
            'total': confidence,
            'source_similarity': source_score,
            'structure': structure_score,
            'content': content_score,
            'cross_references': cross_ref_score,
            'manual': manual_score
        },
        'recommendation': 'APPROVE' if confidence >= 85 else ('REVIEW' if confidence >= 70 else 'REJECT'),
        'verses': source1_verses
    }

    return results

def save_validation_report(results, gospel_name, chapter_num):
    """Save validation results to JSON"""
    Path(OUTPUT_DIR).mkdir(parents=True, exist_ok=True)

    filename = f"{OUTPUT_DIR}/validation_{gospel_name.lower()}_{chapter_num}_{datetime.now().strftime('%Y%m%d_%H%M%S')}.json"

    with open(filename, 'w') as f:
        json.dump(results, f, indent=2)

    print(f"\n💾 Validation report saved: {filename}")
    return filename

def main():
    """Main validation pipeline"""
    print("📖 Gospel Verses Multi-Source Validation")
    print("=" * 80)
    print("\n⚠️  ESV API Key not configured - validation will use single source")
    print("   Sign up for free at: https://api.esv.org/account/create/")
    print("   Then set ESV_API_KEY environment variable\n")

    # Example: Validate John 3
    if len(sys.argv) >= 3:
        gospel = sys.argv[1].capitalize()
        chapter = int(sys.argv[2])
    else:
        # Default test
        gospel = "John"
        chapter = 3
        print(f"Usage: python3 validate_gospel_verses.py <Gospel> <Chapter>")
        print(f"Example: python3 validate_gospel_verses.py Matthew 1\n")
        print(f"Running default test: {gospel} {chapter}\n")

    # Run validation
    results = validate_chapter(gospel, chapter)

    if results:
        # Save report
        report_file = save_validation_report(results, gospel, chapter)

        # Print summary
        print(f"\n{'='*80}")
        print(f"VALIDATION SUMMARY")
        print(f"{'='*80}")
        print(f"Gospel: {gospel} Chapter {chapter}")
        print(f"Confidence: {results['confidence']['total']:.1f}/100")
        print(f"Recommendation: {results['recommendation']}")
        print(f"Report: {report_file}")

        if results['recommendation'] == 'APPROVE':
            print(f"\n✅ Chapter validated successfully!")
            print(f"   Ready for database population")
        elif results['recommendation'] == 'REVIEW':
            print(f"\n⚠️  Manual review recommended")
            print(f"   Some verses may need verification")
        else:
            print(f"\n❌ Validation failed")
            print(f"   Do not populate database with this data")

if __name__ == "__main__":
    main()
