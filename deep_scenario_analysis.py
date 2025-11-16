#!/usr/bin/env python3
"""
Deep analysis of scenario titles and descriptions to extract real-world search patterns.
"""

from supabase import create_client, Client
from collections import Counter, defaultdict
import json
import re

# Supabase credentials
SUPABASE_URL = "https://wlfwdtdtiedlcczfoslt.supabase.co"
SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndsZndkdGR0aWVkbGNjemZvc2x0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE4NjQ5MDAsImV4cCI6MjA2NzQ0MDkwMH0.OiWhZled2trJ7eTd8lpQ658B4p-IVsRp2HXHcgAUoFU"

def fetch_scenarios():
    """Fetch all scenarios."""
    print("Fetching scenarios...")
    supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)
    
    all_scenarios = []
    batch_size = 1000
    offset = 0
    
    while True:
        response = supabase.table('scenarios').select('*').range(offset, offset + batch_size - 1).execute()
        if not response.data:
            break
        all_scenarios.extend(response.data)
        if len(response.data) < batch_size:
            break
        offset += batch_size
    
    print(f"✅ Fetched {len(all_scenarios)} scenarios")
    return all_scenarios

def extract_problem_keywords(scenarios):
    """Extract actual problem keywords from scenario titles."""
    problem_keywords = Counter()
    
    # Patterns to identify problem indicators
    problem_patterns = [
        r'\b(struggling|struggle|difficulty|difficult|problem|issue|trouble|challenge)\b',
        r'\b(can\'t|cannot|unable|won\'t|don\'t)\b',
        r'\b(need|want|trying|attempt|fail|failed|failure)\b',
        r'\b(chronic|severe|constant|persistent|recurring)\b',
        r'\b(burnout|exhausted|overwhelmed|stressed|anxious|depressed)\b',
        r'\b(conflict|fight|argument|disagreement|tension)\b',
    ]
    
    for scenario in scenarios:
        title = scenario.get('sc_title', '').lower()
        description = scenario.get('sc_description', '').lower()
        
        # Extract multi-word problem phrases
        for pattern in problem_patterns:
            matches = re.findall(pattern, title + ' ' + description)
            problem_keywords.update(matches)
    
    return problem_keywords

def analyze_title_patterns(scenarios):
    """Analyze common title patterns to understand how users might search."""
    # Extract first words (action words)
    first_words = Counter()
    # Extract key noun phrases
    noun_phrases = Counter()
    # Extract full titles for sampling
    titles_by_category = defaultdict(list)
    
    for scenario in scenarios:
        title = scenario.get('sc_title', '')
        category = scenario.get('sc_category', 'Unknown')
        
        if title:
            # First word
            first_word = title.split()[0] if title.split() else ''
            if first_word and len(first_word) > 3:
                first_words[first_word.lower()] += 1
            
            # Store title by category
            titles_by_category[category].append(title)
            
            # Extract noun phrases (2-3 word combinations)
            words = title.lower().split()
            for i in range(len(words) - 1):
                phrase = ' '.join(words[i:i+2])
                if len(phrase) > 8:  # Skip very short phrases
                    noun_phrases[phrase] += 1
    
    return first_words, noun_phrases, titles_by_category

def extract_symptom_terms(scenarios):
    """Extract symptom and problem terms that users might search for."""
    symptoms = {
        'physical': Counter(),
        'emotional': Counter(),
        'behavioral': Counter(),
        'relational': Counter(),
    }
    
    # Symptom keywords to look for
    physical_keywords = r'\b(pain|ache|sick|ill|tired|fatigue|sleep|insomnia|headache|chronic|disability|injury|fall|hurt)\b'
    emotional_keywords = r'\b(depress|sad|grief|anxi|worry|fear|scare|anger|angry|stress|overwhelm|lone|guilt|shame|hope)\b'
    behavioral_keywords = r'\b(addict|drink|smoke|lie|cheat|steal|procrastinat|avoid|quit|giv.*up)\b'
    relational_keywords = r'\b(divorce|fight|conflict|betray|trust|abuse|toxic|argument|disagree)\b'
    
    for scenario in scenarios:
        text = (scenario.get('sc_title', '') + ' ' + scenario.get('sc_description', '')).lower()
        
        # Physical symptoms
        matches = re.findall(physical_keywords, text)
        symptoms['physical'].update(matches)
        
        # Emotional symptoms
        matches = re.findall(emotional_keywords, text)
        symptoms['emotional'].update(matches)
        
        # Behavioral symptoms
        matches = re.findall(behavioral_keywords, text)
        symptoms['behavioral'].update(matches)
        
        # Relational symptoms
        matches = re.findall(relational_keywords, text)
        symptoms['relational'].update(matches)
    
    return symptoms

def sample_titles_for_search_terms(titles_by_category):
    """Generate sample search terms based on actual titles."""
    search_examples = {}
    
    for category, titles in titles_by_category.items():
        # Take representative samples
        samples = titles[:10]  # First 10 from each category
        
        # Convert titles to potential search terms
        search_terms = []
        for title in samples:
            # Extract key phrases (remove common articles, prepositions)
            clean_title = re.sub(r'\b(a|an|the|of|in|on|at|to|for|with)\b', ' ', title.lower())
            clean_title = re.sub(r'\s+', ' ', clean_title).strip()
            
            # Split into searchable chunks
            words = clean_title.split()
            if len(words) <= 3:
                search_terms.append(clean_title)
            else:
                # Take first 3 meaningful words
                search_terms.append(' '.join(words[:3]))
        
        search_examples[category] = search_terms
    
    return search_examples

def generate_enhanced_report(scenarios):
    """Generate enhanced markdown report with real data."""
    print("\n" + "="*100)
    print("ENHANCED SEARCH TERMS ANALYSIS - BASED ON ACTUAL SCENARIO DATA")
    print("="*100 + "\n")
    
    # Title pattern analysis
    first_words, noun_phrases, titles_by_category = analyze_title_patterns(scenarios)
    
    print("## 1. COMMON TITLE STARTING WORDS (How people frame problems)\n")
    print("Top 50 words people use to describe their situations:")
    for i, (word, count) in enumerate(list(first_words.most_common(50)), 1):
        if i % 5 == 1:
            print()
        print(f"{word:20s} ({count:3d})  ", end='')
    print("\n")
    
    print("\n## 2. COMMON TWO-WORD PHRASES IN TITLES\n")
    print("Top 40 phrases found in actual scenario titles:")
    for i, (phrase, count) in enumerate(list(noun_phrases.most_common(40)), 1):
        if i % 2 == 1:
            print()
        print(f"  '{phrase}' ({count})  ", end='')
    print("\n")
    
    # Symptom analysis
    symptoms = extract_symptom_terms(scenarios)
    
    print("\n## 3. ACTUAL SYMPTOM TERMS FOUND IN DATABASE\n")
    
    print("\n### Physical Symptoms:")
    for symptom, count in symptoms['physical'].most_common(20):
        print(f"  - {symptom} ({count} occurrences)")
    
    print("\n### Emotional Symptoms:")
    for symptom, count in symptoms['emotional'].most_common(20):
        print(f"  - {symptom} ({count} occurrences)")
    
    print("\n### Behavioral Issues:")
    for symptom, count in symptoms['behavioral'].most_common(20):
        print(f"  - {symptom} ({count} occurrences)")
    
    print("\n### Relational Problems:")
    for symptom, count in symptoms['relational'].most_common(20):
        print(f"  - {symptom} ({count} occurrences)")
    
    # Sample search terms by category
    search_examples = sample_titles_for_search_terms(titles_by_category)
    
    print("\n\n## 4. SAMPLE SEARCH TERMS BY CATEGORY (Extracted from Real Titles)\n")
    for category, terms in sorted(search_examples.items()):
        print(f"\n### {category}:")
        for term in terms[:8]:  # Show first 8
            print(f"  - \"{term}\"")
    
    # Sample actual titles
    print("\n\n## 5. SAMPLE ACTUAL SCENARIO TITLES (For Reference)\n")
    for category in ['Health & Wellness', 'Work & Career', 'Relationships', 'Parenting & Family']:
        if category in titles_by_category:
            print(f"\n### {category}:")
            for title in titles_by_category[category][:15]:
                print(f"  - {title}")
    
    print("\n\n" + "="*100)
    print("END OF ENHANCED ANALYSIS")
    print("="*100 + "\n")

def main():
    try:
        scenarios = fetch_scenarios()
        generate_enhanced_report(scenarios)
        
        print("\n✅ Deep analysis complete!")
        
    except Exception as e:
        print(f"❌ Error: {e}")
        import traceback
        traceback.print_exc()

if __name__ == "__main__":
    main()
