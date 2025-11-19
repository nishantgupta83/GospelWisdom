# Gospel Scholar Validation Agent

## Purpose
Automated validation agent to verify the accuracy and quality of Gospel content in the Supabase database against multiple authoritative Bible sources.

## Features
- Cross-validates Gospel verses against 5+ authoritative Bible sources
- Validates Gospel metadata (books, chapters, themes)
- Theological accuracy checking
- Detects dangerous special characters that could cause runtime errors
- Calculates quality scores (0-100) for each verse and chapter
- Generates SQL fix scripts for detected issues
- Creates visual quality dashboard

## Authoritative Sources (5+)

### Primary Sources
1. **Bible.org API** - NET Bible (New English Translation)
   - Academic, free access
   - Comprehensive notes and cross-references

2. **ESV API** - English Standard Version
   - Popular literal translation
   - Preferred by many churches and study groups

3. **Bible Gateway API** - Multiple translations
   - Access to NIV, KJV, NRSV, and 70+ translations
   - Cross-reference support

4. **Bible.com API (YouVersion)** - Multiple translations
   - Most popular Bible app globally
   - Community-driven content

5. **BibleHub** - Concordance and Cross-References
   - Interlinear translations
   - Greek/Hebrew root words
   - Extensive cross-referencing

### Validation Checks
- **Verse Accuracy** (40 pts): Text similarity across sources
- **Completeness** (25 pts): All fields populated
- **Theological Accuracy** (20 pts): Verse context and cross-references
- **Character Safety** (10 pts): No dangerous characters
- **Consistency** (5 pts): Verse numbering correct

## Installation

```bash
cd gospel_scholar_agent
pip install -r requirements.txt
```

## Configuration

Create a `.env` file:

```env
# Supabase Configuration
SUPABASE_URL=your_supabase_url
SUPABASE_KEY=your_supabase_anon_key

# Bible API Keys (optional - public APIs available)
BIBLE_ORG_API_KEY=your_key_if_needed
ESV_API_KEY=your_esv_api_key
BIBLE_GATEWAY_API_KEY=your_key_if_needed

# Scholar Agent Settings
DEFAULT_TRANSLATION=NIV
VALIDATION_THRESHOLD=70  # Minimum quality score (0-100)
MAX_CONCURRENT_REQUESTS=5
```

## Usage

```bash
# Run full validation
python gospel_scholar_agent.py --mode full

# Validate verses only
python gospel_scholar_agent.py --mode verses

# Validate chapters only
python gospel_scholar_agent.py --mode chapters

# Validate specific Gospel
python gospel_scholar_agent.py --mode verses --gospel matthew

# Generate report only (no validation)
python gospel_scholar_agent.py --mode report

# Run with specific translation
python gospel_scholar_agent.py --mode full --translation NIV
```

## Output

The agent generates the following outputs in the `output/` directory:

- `validation_report.json` - Detailed validation results with scores
- `quality_dashboard.html` - Visual scorecard with charts
- `fix_script.sql` - SQL commands to fix detected issues
- `special_chars_report.json` - Dangerous character locations
- `theological_issues.json` - Context and accuracy concerns
- `translation_comparison.csv` - Side-by-side translation comparison

## Quality Score Metrics

Each verse and chapter receives a quality score (0-100) based on:

### Verse Scoring (100 points)
- **Accuracy** (40 pts): Text similarity across multiple sources
  - 100% match across all sources: 40 pts
  - 90-99% similarity: 30-39 pts
  - 80-89% similarity: 20-29 pts
  - Below 80%: Flagged for review

- **Completeness** (25 pts): All required fields populated
  - Text, reference, context, keywords, themes

- **Theological Accuracy** (20 pts): Proper context and cross-references
  - Verified against commentaries
  - Cross-references validated

- **Character Safety** (10 pts): No problematic characters
  - No null bytes, control characters, or invalid Unicode

- **Consistency** (5 pts): Verse numbering matches across sources

### Chapter Scoring (100 points)
- **Metadata Completeness** (40 pts): All fields populated
- **Verse Count Accuracy** (30 pts): Correct number of verses
- **Theme Accuracy** (20 pts): Themes align with scholarly sources
- **Cross-Reference Quality** (10 pts): Valid references

## Gospel Structure

### 4 Gospels Validated
1. **Matthew** - 28 chapters, ~1,071 verses
2. **Mark** - 16 chapters, ~678 verses
3. **Luke** - 24 chapters, ~1,151 verses
4. **John** - 21 chapters, ~879 verses

**Total**: 89 chapters, ~3,779 verses

## Validation Workflow

1. **Source Connection** - Connect to all available Bible APIs
2. **Data Retrieval** - Fetch Gospel content from Supabase
3. **Cross-Validation** - Compare verses across 5+ sources
4. **Theological Check** - Verify context and cross-references
5. **Quality Scoring** - Calculate scores for each verse/chapter
6. **Issue Detection** - Identify discrepancies and errors
7. **Fix Generation** - Create SQL scripts to resolve issues
8. **Report Creation** - Generate comprehensive reports

## Error Handling

The agent handles various error scenarios:
- **API Unavailability**: Falls back to available sources
- **Network Errors**: Retries with exponential backoff
- **Rate Limiting**: Respects API rate limits
- **Data Inconsistency**: Flags for manual review
- **Missing Translations**: Reports coverage gaps

## Development

### Adding New Bible Sources

1. Create new source class in `sources/`:
   ```python
   from sources.base_source import BaseBibleSource

   class NewBibleSource(BaseBibleSource):
       def fetch_verse(self, gospel, chapter, verse):
           # Implementation
           pass
   ```

2. Register in `gospel_scholar_agent.py`:
   ```python
   sources.append(NewBibleSource())
   ```

### Adding New Validators

1. Create validator in `validators/`:
   ```python
   class CustomValidator:
       def validate(self, data):
           # Implementation
           pass
   ```

2. Integrate in main validation flow

## License
MIT License - Free for use in GospelWisdom app

## Credits
- Based on GitaWisdom Scholar Agent architecture
- Adapted for Gospel/Bible content validation
- Created: 2025-11-19
