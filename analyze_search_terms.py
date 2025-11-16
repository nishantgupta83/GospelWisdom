#!/usr/bin/env python3
"""
Comprehensive analysis of GitaWisdom scenarios to identify real-world search terms.
This script queries the Supabase database and generates a detailed report.
"""

from supabase import create_client, Client
from collections import Counter, defaultdict
import json
import re
from typing import Dict, List, Set, Tuple

# Supabase credentials
SUPABASE_URL = "https://wlfwdtdtiedlcczfoslt.supabase.co"
SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndsZndkdGR0aWVkbGNjemZvc2x0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTE4NjQ5MDAsImV4cCI6MjA2NzQ0MDkwMH0.OiWhZled2trJ7eTd8lpQ658B4p-IVsRp2HXHcgAUoFU"

def fetch_all_scenarios() -> List[Dict]:
    """Fetch all scenarios from Supabase."""
    print("Fetching all scenarios from Supabase...")
    supabase: Client = create_client(SUPABASE_URL, SUPABASE_KEY)
    
    # Fetch in batches
    all_scenarios = []
    batch_size = 1000
    offset = 0
    
    while True:
        response = supabase.table('scenarios').select('*').range(offset, offset + batch_size - 1).execute()
        if not response.data:
            break
        all_scenarios.extend(response.data)
        print(f"  Fetched {len(all_scenarios)} scenarios...")
        if len(response.data) < batch_size:
            break
        offset += batch_size
    
    print(f"✅ Total scenarios fetched: {len(all_scenarios)}")
    return all_scenarios

def analyze_categories(scenarios: List[Dict]) -> Dict[str, int]:
    """Analyze scenario categories."""
    categories = Counter()
    for scenario in scenarios:
        category = scenario.get('sc_category', 'Unknown')
        categories[category] += 1
    return dict(categories)

def analyze_tags(scenarios: List[Dict]) -> Dict[str, int]:
    """Analyze scenario tags."""
    tags = Counter()
    for scenario in scenarios:
        scenario_tags = scenario.get('sc_tags', [])
        if scenario_tags:
            for tag in scenario_tags:
                tags[tag] += 1
    return dict(tags)

def extract_keywords(text: str) -> Set[str]:
    """Extract meaningful keywords from text."""
    # Remove punctuation and lowercase
    text = re.sub(r'[^\w\s]', ' ', text.lower())
    words = text.split()
    
    # Stop words to exclude
    stop_words = {
        'a', 'an', 'and', 'are', 'as', 'at', 'be', 'by', 'for', 'from',
        'has', 'he', 'in', 'is', 'it', 'its', 'of', 'on', 'that', 'the',
        'to', 'was', 'will', 'with', 'you', 'your', 'this', 'these', 'those',
        'i', 'we', 'they', 'what', 'which', 'who', 'when', 'where', 'why', 'how',
        'but', 'or', 'if', 'so', 'can', 'could', 'would', 'should', 'may', 'might',
        'must', 'shall', 'will', 'have', 'had', 'been', 'being', 'am', 'my', 'me'
    }
    
    # Filter keywords (minimum 3 chars, not stop words)
    keywords = {word for word in words if len(word) >= 3 and word not in stop_words}
    return keywords

def analyze_common_words(scenarios: List[Dict]) -> Dict[str, int]:
    """Analyze most common words across all scenario fields."""
    word_freq = Counter()
    
    for scenario in scenarios:
        # Combine all text fields
        text_parts = [
            scenario.get('sc_title', ''),
            scenario.get('sc_description', ''),
            scenario.get('sc_category', ''),
            scenario.get('sc_heart_response', ''),
            scenario.get('sc_duty_response', ''),
            scenario.get('sc_gita_wisdom', ''),
        ]
        
        combined_text = ' '.join(text_parts)
        keywords = extract_keywords(combined_text)
        word_freq.update(keywords)
    
    return dict(word_freq.most_common(200))

def extract_problem_phrases(scenarios: List[Dict]) -> Dict[str, List[str]]:
    """Extract common problem phrases from titles and descriptions."""
    problem_patterns = {
        'feelings': r'\b(feel|feeling|felt|feels|angry|sad|depressed|anxious|worried|stressed|overwhelmed|frustrated|confused|lost|lonely|guilty|ashamed)\b',
        'actions': r'\b(lying|cheating|stealing|drinking|smoking|fighting|arguing|yelling|hitting|hurting|avoiding|procrastinating|quitting)\b',
        'states': r'\b(unemployed|divorced|sick|ill|dying|dead|bankrupt|homeless|addicted|pregnant)\b',
        'relationships': r'\b(wife|husband|spouse|partner|boyfriend|girlfriend|mother|father|parent|child|son|daughter|friend|boss|coworker|colleague)\b',
        'problems': r'\b(problem|issue|trouble|difficulty|struggle|challenge|conflict|crisis|emergency)\b',
        'physical': r'\b(pain|sick|illness|disease|injury|tired|exhausted|insomnia|headache|fall|falling|fallen)\b',
        'work': r'\b(job|work|career|business|fired|quit|unemployed|promotion|salary|boss|deadline|pressure)\b',
        'money': r'\b(money|debt|bankrupt|poor|rich|income|salary|loan|bill|financial|poverty)\b',
        'family': r'\b(family|divorce|marriage|child|parent|sibling|relative|household)\b',
        'spiritual': r'\b(god|prayer|meditation|faith|belief|religion|spiritual|divine|soul|karma|dharma)\b',
    }
    
    matches = defaultdict(list)
    
    for scenario in scenarios:
        title = scenario.get('sc_title', '').lower()
        description = scenario.get('sc_description', '').lower()
        combined = f"{title} {description}"
        
        for category, pattern in problem_patterns.items():
            if re.search(pattern, combined):
                # Extract the sentence containing the match
                sentences = re.split(r'[.!?]', combined)
                for sentence in sentences:
                    if re.search(pattern, sentence):
                        matches[category].append(sentence.strip())
    
    return dict(matches)

def generate_search_term_categories() -> Dict[str, List[str]]:
    """Generate comprehensive categorized search terms."""
    return {
        'physical_symptoms': [
            'fall down', 'falling', 'tumble', 'trip', 'stumble',
            'pain', 'hurt', 'ache', 'sore', 'injury', 'wound',
            'sick', 'ill', 'disease', 'infection', 'fever',
            'tired', 'exhausted', 'fatigue', 'weak', 'weary',
            'headache', 'migraine', 'dizzy', 'nausea',
            'not eating', 'appetite loss', 'weight loss', 'weight gain',
            'can\'t sleep', 'insomnia', 'sleepless', 'nightmares',
            'chronic pain', 'disability', 'paralysis',
        ],
        'mental_emotional': [
            'depressed', 'depression', 'sad', 'sadness', 'grief', 'sorrow',
            'anxious', 'anxiety', 'panic', 'worried', 'fear', 'scared',
            'angry', 'rage', 'fury', 'irritated', 'annoyed',
            'stressed', 'overwhelmed', 'pressure', 'burden',
            'lonely', 'alone', 'isolated', 'abandoned',
            'confused', 'lost', 'uncertain', 'doubt', 'perplexed',
            'guilty', 'ashamed', 'regret', 'remorse',
            'hopeless', 'despair', 'suicidal', 'worthless',
            'jealous', 'envious', 'resentful', 'bitter',
        ],
        'behavioral': [
            'hair pull', 'hair pulling', 'trichotillomania',
            'nail biting', 'biting nails', 'nervous habit',
            'procrastinate', 'procrastination', 'delay', 'postpone',
            'lie', 'lying', 'liar', 'dishonest', 'deception',
            'cheat', 'cheating', 'unfaithful', 'adultery',
            'steal', 'stealing', 'theft', 'shoplifting',
            'addiction', 'addicted', 'substance abuse', 'alcoholic',
            'gambling', 'overeating', 'binge eating',
            'self harm', 'cutting', 'suicide attempt',
        ],
        'relationship_issues': [
            'fight with wife', 'fight with husband', 'marital conflict',
            'fight with spouse', 'argue with partner', 'relationship problems',
            'betrayed', 'betrayal', 'trust issues', 'unfaithful partner',
            'divorce', 'separation', 'breakup', 'break up',
            'kids disobey', 'children misbehave', 'rebellious teenager',
            'parent conflict', 'family fight', 'sibling rivalry',
            'friend betrayed', 'lost friendship', 'friendship problems',
            'toxic relationship', 'abusive relationship', 'domestic violence',
            'in-laws problems', 'mother-in-law issues',
        ],
        'work_career': [
            'lost job', 'fired', 'terminated', 'laid off', 'unemployed',
            'hate work', 'hate job', 'job dissatisfaction', 'burnout',
            'boss yells', 'toxic boss', 'bad manager', 'micromanager',
            'coworker gossip', 'workplace gossip', 'office politics',
            'deadline pressure', 'work stress', 'overworked',
            'career change', 'job change', 'quit job', 'resignation',
            'promotion denied', 'passed over', 'unfair treatment',
            'workplace harassment', 'discrimination', 'bullying',
        ],
        'financial': [
            'no money', 'broke', 'poor', 'poverty',
            'debt', 'debtor', 'in debt', 'owe money',
            'bankrupt', 'bankruptcy', 'financial ruin',
            'can\'t pay bills', 'unpaid bills', 'eviction',
            'job loss', 'income loss', 'salary cut',
            'business failed', 'startup failed', 'investment loss',
        ],
        'health_medical': [
            'chronic illness', 'terminal illness', 'cancer', 'diagnosis',
            'mental illness', 'psychiatric', 'therapy', 'medication',
            'addiction', 'alcoholism', 'drug abuse', 'substance abuse',
            'eating disorder', 'anorexia', 'bulimia',
            'disability', 'handicap', 'wheelchair', 'blind', 'deaf',
        ],
        'spiritual_existential': [
            'lost faith', 'crisis of faith', 'doubt god', 'atheist',
            'why me', 'unfair', 'injustice', 'suffering',
            'purpose of life', 'meaning of life', 'existential crisis',
            'death anxiety', 'fear of death', 'mortality',
            'karma', 'dharma', 'destiny', 'fate',
            'meditation help', 'spiritual guidance', 'enlightenment',
        ],
        'life_events': [
            'death in family', 'parent died', 'child died', 'spouse died',
            'miscarriage', 'stillbirth', 'pregnancy loss',
            'accident', 'car accident', 'injury',
            'diagnosis', 'terminal illness', 'chronic disease',
            'job loss', 'fired', 'laid off',
            'divorce', 'separation', 'breakup',
            'moving', 'relocation', 'immigration',
        ],
    }

def generate_concept_mappings() -> Dict[str, List[str]]:
    """Generate concept to search term mappings."""
    return {
        'stress_anxiety': [
            'stress', 'stressed', 'anxiety', 'anxious', 'panic', 'worried',
            'overwhelmed', 'pressure', 'tension', 'burden', 'strain',
            'nervous', 'restless', 'agitated', 'uneasy',
        ],
        'depression_sadness': [
            'depression', 'depressed', 'sad', 'sadness', 'grief', 'sorrow',
            'hopeless', 'despair', 'misery', 'melancholy', 'blue',
            'unhappy', 'crying', 'tears', 'suicidal',
        ],
        'anger_conflict': [
            'anger', 'angry', 'rage', 'fury', 'irritated', 'annoyed',
            'frustrated', 'resentful', 'bitter', 'hostile',
            'fight', 'argue', 'conflict', 'confrontation', 'dispute',
        ],
        'relationships': [
            'marriage', 'spouse', 'wife', 'husband', 'partner',
            'family', 'parents', 'children', 'siblings',
            'friendship', 'friend', 'relationship', 'love',
            'divorce', 'separation', 'breakup', 'betrayal',
        ],
        'work_career': [
            'work', 'job', 'career', 'employment', 'business',
            'boss', 'manager', 'coworker', 'colleague',
            'fired', 'quit', 'unemployed', 'promotion',
            'salary', 'income', 'deadline', 'burnout',
        ],
        'health_wellness': [
            'health', 'illness', 'sick', 'disease', 'pain',
            'chronic', 'disability', 'injury', 'medical',
            'tired', 'exhausted', 'sleep', 'insomnia',
            'addiction', 'substance abuse', 'mental health',
        ],
        'purpose_meaning': [
            'purpose', 'meaning', 'dharma', 'calling', 'mission',
            'goals', 'direction', 'vision', 'destiny', 'fate',
            'lost', 'confused', 'unclear', 'existential',
        ],
        'spiritual': [
            'spiritual', 'meditation', 'prayer', 'faith', 'belief',
            'god', 'divine', 'soul', 'consciousness', 'enlightenment',
            'karma', 'dharma', 'religious', 'sacred',
        ],
        'financial': [
            'money', 'financial', 'debt', 'poor', 'broke',
            'bankrupt', 'bills', 'income', 'salary', 'wealth',
            'poverty', 'loan', 'mortgage', 'investment',
        ],
    }

def generate_test_cases() -> List[Dict[str, any]]:
    """Generate realistic test search queries."""
    return [
        # Physical symptoms
        {'query': 'fall down', 'expected': 'health/physical', 'frequency': 'medium'},
        {'query': 'hair pulling', 'expected': 'behavioral/anxiety', 'frequency': 'low'},
        {'query': 'can\'t sleep', 'expected': 'health/stress', 'frequency': 'high'},
        {'query': 'chronic pain', 'expected': 'health/suffering', 'frequency': 'medium'},
        
        # Mental/emotional
        {'query': 'depressed', 'expected': 'mental health', 'frequency': 'high'},
        {'query': 'anxious', 'expected': 'mental health/stress', 'frequency': 'high'},
        {'query': 'angry all the time', 'expected': 'anger management', 'frequency': 'high'},
        {'query': 'lonely', 'expected': 'emotional/relationships', 'frequency': 'high'},
        
        # Behavioral
        {'query': 'lying to family', 'expected': 'ethics/relationships', 'frequency': 'medium'},
        {'query': 'procrastination', 'expected': 'productivity/habits', 'frequency': 'high'},
        {'query': 'addiction', 'expected': 'health/behavioral', 'frequency': 'medium'},
        
        # Relationships
        {'query': 'fight with wife', 'expected': 'marriage/conflict', 'frequency': 'high'},
        {'query': 'divorce', 'expected': 'relationships/life events', 'frequency': 'medium'},
        {'query': 'betrayed by friend', 'expected': 'relationships/trust', 'frequency': 'medium'},
        {'query': 'kids don\'t listen', 'expected': 'parenting/family', 'frequency': 'high'},
        
        # Work
        {'query': 'lost my job', 'expected': 'career/financial', 'frequency': 'high'},
        {'query': 'hate my boss', 'expected': 'work/relationships', 'frequency': 'high'},
        {'query': 'workplace stress', 'expected': 'work/mental health', 'frequency': 'high'},
        {'query': 'should I quit', 'expected': 'career/decision', 'frequency': 'high'},
        
        # Financial
        {'query': 'in debt', 'expected': 'financial/stress', 'frequency': 'high'},
        {'query': 'no money', 'expected': 'financial/survival', 'frequency': 'high'},
        {'query': 'business failed', 'expected': 'financial/failure', 'frequency': 'medium'},
        
        # Spiritual/existential
        {'query': 'lost faith', 'expected': 'spiritual crisis', 'frequency': 'medium'},
        {'query': 'purpose of life', 'expected': 'existential/meaning', 'frequency': 'high'},
        {'query': 'why do I suffer', 'expected': 'spiritual/suffering', 'frequency': 'high'},
        {'query': 'fear of death', 'expected': 'existential/spiritual', 'frequency': 'medium'},
        
        # Life events
        {'query': 'parent died', 'expected': 'grief/loss', 'frequency': 'medium'},
        {'query': 'terminal illness', 'expected': 'health/mortality', 'frequency': 'low'},
        {'query': 'facing death', 'expected': 'mortality/spiritual', 'frequency': 'low'},
        
        # Complex scenarios
        {'query': 'unfair treatment at work', 'expected': 'work/justice', 'frequency': 'high'},
        {'query': 'toxic relationship', 'expected': 'relationships/health', 'frequency': 'medium'},
        {'query': 'feeling worthless', 'expected': 'mental health/self-worth', 'frequency': 'high'},
    ]

def save_report(data: Dict, filename: str):
    """Save analysis report to file."""
    with open(filename, 'w', encoding='utf-8') as f:
        json.dump(data, f, indent=2, ensure_ascii=False)
    print(f"✅ Report saved to: {filename}")

def print_markdown_report(scenarios: List[Dict]):
    """Generate and print comprehensive markdown report."""
    print("\n" + "="*80)
    print("COMPREHENSIVE SEARCH TERMS RESEARCH REPORT")
    print("GitaWisdom Scenario Database Analysis")
    print("="*80 + "\n")
    
    # Database statistics
    print("## 1. DATABASE STATISTICS\n")
    print(f"- Total scenarios: {len(scenarios)}")
    
    categories = analyze_categories(scenarios)
    print(f"- Total categories: {len(categories)}")
    print("\nTop 20 Categories:")
    for category, count in sorted(categories.items(), key=lambda x: x[1], reverse=True)[:20]:
        print(f"  - {category}: {count} scenarios")
    
    tags = analyze_tags(scenarios)
    print(f"\n- Total unique tags: {len(tags)}")
    print("\nTop 30 Tags:")
    for tag, count in sorted(tags.items(), key=lambda x: x[1], reverse=True)[:30]:
        print(f"  - {tag}: {count} occurrences")
    
    # Common words
    print("\n\n## 2. MOST COMMON KEYWORDS\n")
    common_words = analyze_common_words(scenarios)
    print("Top 100 keywords found across all scenarios:")
    for i, (word, count) in enumerate(list(common_words.items())[:100], 1):
        if i % 5 == 1:
            print()
        print(f"{word:20s} ({count:4d})  ", end='')
    print("\n")
    
    # Search term categories
    print("\n\n## 3. CATEGORIZED SEARCH TERMS\n")
    search_terms = generate_search_term_categories()
    for category, terms in search_terms.items():
        print(f"\n### {category.replace('_', ' ').title()} ({len(terms)} terms)")
        for i in range(0, len(terms), 4):
            row = terms[i:i+4]
            print("  - " + " | ".join(row))
    
    # Concept mappings
    print("\n\n## 4. CONCEPT MAPPINGS\n")
    concepts = generate_concept_mappings()
    for concept, terms in concepts.items():
        print(f"\n### {concept.replace('_', ' ').title()}")
        print(f"Terms: {', '.join(terms[:15])}...")
    
    # Test cases
    print("\n\n## 5. TEST CASES (30 Realistic Searches)\n")
    test_cases = generate_test_cases()
    print(f"{'Query':<30s} {'Expected Category':<30s} {'Frequency'}")
    print("-" * 80)
    for tc in test_cases:
        print(f"{tc['query']:<30s} {tc['expected']:<30s} {tc['frequency']}")
    
    # Priority rankings
    print("\n\n## 6. PRIORITY RANKINGS\n")
    print("\n### HIGH FREQUENCY (80% of user searches)")
    high_freq = [tc for tc in test_cases if tc['frequency'] == 'high']
    for tc in high_freq:
        print(f"  - {tc['query']}")
    
    print("\n### MEDIUM FREQUENCY (15% of user searches)")
    med_freq = [tc for tc in test_cases if tc['frequency'] == 'medium']
    for tc in med_freq:
        print(f"  - {tc['query']}")
    
    print("\n### LOW FREQUENCY (5% of user searches)")
    low_freq = [tc for tc in test_cases if tc['frequency'] == 'low']
    for tc in low_freq:
        print(f"  - {tc['query']}")
    
    print("\n\n" + "="*80)
    print("END OF REPORT")
    print("="*80 + "\n")

def main():
    """Main execution function."""
    try:
        # Fetch scenarios
        scenarios = fetch_all_scenarios()
        
        if not scenarios:
            print("❌ No scenarios found in database")
            return
        
        # Generate comprehensive report
        print_markdown_report(scenarios)
        
        # Save detailed data to JSON
        report_data = {
            'metadata': {
                'total_scenarios': len(scenarios),
                'generated_at': '2025-11-15',
            },
            'categories': analyze_categories(scenarios),
            'tags': analyze_tags(scenarios),
            'common_keywords': analyze_common_words(scenarios),
            'search_term_categories': generate_search_term_categories(),
            'concept_mappings': generate_concept_mappings(),
            'test_cases': generate_test_cases(),
        }
        
        save_report(report_data, 'search_terms_research_report.json')
        
        print("\n✅ Analysis complete!")
        
    except Exception as e:
        print(f"❌ Error: {e}")
        import traceback
        traceback.print_exc()

if __name__ == "__main__":
    main()
