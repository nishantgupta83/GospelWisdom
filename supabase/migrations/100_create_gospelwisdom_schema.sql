-- ===================================================================
-- GospelWisdom Database Schema Migration
-- File: 100_create_gospelwisdom_schema.sql
-- Purpose: Create comprehensive Gospel reading and wisdom application schema
-- Date: 2025-11-19
-- ===================================================================

-- Drop existing objects if they exist (for safe re-runs)
DROP VIEW IF EXISTS gospel_chapter_summary_multilingual CASCADE;
DROP VIEW IF EXISTS gospel_scenario_summary_multilingual CASCADE;
DROP VIEW IF EXISTS gospel_verse_summary_multilingual CASCADE;

DROP TABLE IF EXISTS gospel_verse_translations CASCADE;
DROP TABLE IF EXISTS gospel_chapter_translations CASCADE;
DROP TABLE IF EXISTS gospel_translations CASCADE;
DROP TABLE IF EXISTS gospel_scenario_translations CASCADE;
DROP TABLE IF EXISTS gospel_verses CASCADE;
DROP TABLE IF EXISTS gospel_chapters CASCADE;
DROP TABLE IF EXISTS gospel_scenarios CASCADE;
DROP TABLE IF EXISTS gospels CASCADE;
DROP TABLE IF EXISTS supported_translations CASCADE;

-- ===================================================================
-- GOSPELS TABLE (4 Gospel Books)
-- ===================================================================
CREATE TABLE gospels (
    gospel_id INTEGER PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,      -- Matthew, Mark, Luke, John
    author VARCHAR(100) NOT NULL,          -- The Apostle Matthew, Mark, Luke, John
    traditional_author VARCHAR(100),       -- Traditional attribution
    estimated_date VARCHAR(50),            -- 50-90 AD, 55-70 AD, etc.
    theme TEXT,                            -- Main theme of the Gospel
    purpose TEXT,                          -- Why it was written
    audience VARCHAR(200),                 -- Target audience
    chapter_count INTEGER NOT NULL,        -- Total chapters
    verse_count INTEGER NOT NULL,          -- Total verses
    key_themes TEXT[],                     -- Array of key themes
    distinctive_features TEXT,             -- What makes this Gospel unique
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Insert the 4 Gospels
INSERT INTO gospels (gospel_id, name, author, traditional_author, estimated_date, theme, purpose, audience, chapter_count, verse_count, key_themes, distinctive_features) VALUES
(1, 'Matthew', 'The Apostle Matthew', 'Matthew (Levi), tax collector and apostle', '50-70 AD', 'Jesus as the Messiah and King', 'To prove to Jewish readers that Jesus is the Messiah prophesied in the Old Testament', 'Jewish Christians', 28, 1071, ARRAY['Kingdom of Heaven', 'Fulfillment of Prophecy', 'Righteousness', 'Discipleship', 'Teaching'], 'Contains the Sermon on the Mount; emphasizes Jesus'' teaching ministry; most Old Testament quotations'),

(2, 'Mark', 'John Mark', 'John Mark, companion of Peter and Paul', '55-65 AD', 'Jesus as the Suffering Servant', 'To present Jesus as a man of action and the Suffering Servant', 'Roman Christians and Gentile readers', 16, 678, ARRAY['Servanthood', 'Action', 'Suffering', 'Discipleship', 'Power of Jesus'], 'Shortest Gospel; fast-paced narrative; emphasizes Jesus'' actions over teachings; written for Gentile audience'),

(3, 'Luke', 'Luke the Physician', 'Luke, physician and companion of Paul', '60-80 AD', 'Jesus as the Son of Man and Savior of All', 'To provide an orderly and accurate account of Jesus'' life for Gentile readers', 'Gentile Christians, specifically Theophilus', 24, 1151, ARRAY['Universal Salvation', 'Prayer', 'Holy Spirit', 'Women and Outcasts', 'Joy'], 'Most comprehensive Gospel; emphasizes Jesus'' compassion for outcasts; detailed birth narrative; parables unique to Luke'),

(4, 'John', 'The Apostle John', 'John, son of Zebedee, the beloved disciple', '85-95 AD', 'Jesus as the Son of God and the Word', 'To prove that Jesus is the Son of God and to bring readers to faith in Him', 'All Christians, with emphasis on deep theological truth', 21, 879, ARRAY['Divinity of Jesus', 'Eternal Life', 'Love', 'Belief/Faith', 'Signs and Wonders'], 'Most theological Gospel; "I Am" statements; different structure than synoptic Gospels; focus on Jesus'' divinity');

-- ===================================================================
-- GOSPEL_CHAPTERS TABLE
-- ===================================================================
CREATE TABLE gospel_chapters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    gospel_id INTEGER NOT NULL,
    chapter_number INTEGER NOT NULL,
    title VARCHAR(200),                    -- Optional chapter title
    summary TEXT,                          -- Brief summary of the chapter
    theme TEXT,                            -- Main theme
    key_teachings TEXT[],                  -- Key teachings in this chapter
    key_verses TEXT[],                     -- Notable verses (e.g., ["3:16", "3:17"])
    verse_count INTEGER NOT NULL,
    events TEXT[],                         -- Key events in the chapter
    cross_references TEXT[],               -- Related passages in other books
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_chapters_gospel
        FOREIGN KEY (gospel_id) REFERENCES gospels(gospel_id) ON DELETE CASCADE,
    CONSTRAINT uq_gospel_chapters
        UNIQUE (gospel_id, chapter_number),
    CONSTRAINT ck_chapter_number_positive
        CHECK (chapter_number > 0)
);

-- ===================================================================
-- GOSPEL_VERSES TABLE
-- ===================================================================
CREATE TABLE gospel_verses (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    gospel_id INTEGER NOT NULL,
    chapter_id UUID NOT NULL,
    verse_number INTEGER NOT NULL,
    text TEXT NOT NULL,                    -- NIV translation (default)
    reference VARCHAR(20) NOT NULL,        -- e.g., "John 3:16"
    translation_code VARCHAR(10) DEFAULT 'NIV',  -- Default translation
    context TEXT,                          -- Brief context
    cross_references TEXT[],               -- Related verses
    keywords TEXT[],                       -- Searchable keywords
    themes TEXT[],                         -- Themes (faith, love, forgiveness, etc.)
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_verses_gospel
        FOREIGN KEY (gospel_id) REFERENCES gospels(gospel_id) ON DELETE CASCADE,
    CONSTRAINT fk_gospel_verses_chapter
        FOREIGN KEY (chapter_id) REFERENCES gospel_chapters(id) ON DELETE CASCADE,
    CONSTRAINT uq_gospel_verses
        UNIQUE (gospel_id, chapter_id, verse_number, translation_code),
    CONSTRAINT ck_verse_number_positive
        CHECK (verse_number > 0)
);

-- ===================================================================
-- SUPPORTED_TRANSLATIONS TABLE (Bible Versions)
-- ===================================================================
CREATE TABLE supported_translations (
    translation_code VARCHAR(10) PRIMARY KEY,  -- NIV, KJV, ESV, NRSV, etc.
    full_name VARCHAR(200) NOT NULL,           -- "New International Version"
    abbreviation VARCHAR(10) NOT NULL,         -- "NIV"
    language VARCHAR(50) DEFAULT 'English',    -- Primary language
    year_published INTEGER,                    -- 1984, 2011, etc.
    publisher VARCHAR(200),                    -- Publisher name
    description TEXT,                          -- About this translation
    is_active BOOLEAN DEFAULT TRUE,            -- Enable/disable
    is_primary BOOLEAN DEFAULT FALSE,          -- Primary translation
    sort_order INTEGER DEFAULT 100,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Add primary Bible translations
INSERT INTO supported_translations (translation_code, full_name, abbreviation, language, year_published, publisher, description, is_primary, sort_order) VALUES
('NIV', 'New International Version', 'NIV', 'English', 2011, 'Biblica', 'Contemporary English translation balancing accuracy and readability', TRUE, 1),
('KJV', 'King James Version', 'KJV', 'English', 1611, 'Church of England', 'Traditional, poetic translation with historical significance', FALSE, 2),
('ESV', 'English Standard Version', 'ESV', 'English', 2001, 'Crossway', 'Word-for-word literal translation preferred by many churches', FALSE, 3),
('NRSV', 'New Revised Standard Version', 'NRSV', 'English', 1989, 'National Council of Churches', 'Scholarly, academic translation with inclusive language', FALSE, 4),
('NLT', 'New Living Translation', 'NLT', 'English', 2004, 'Tyndale House', 'Thought-for-thought translation for easy comprehension', FALSE, 5),
('NASB', 'New American Standard Bible', 'NASB', 'English', 2020, 'Lockman Foundation', 'Literal translation preferred for Bible study', FALSE, 6),
('MSG', 'The Message', 'MSG', 'English', 2002, 'NavPress', 'Contemporary paraphrase in modern English', FALSE, 7);

-- ===================================================================
-- GOSPEL_VERSE_TRANSLATIONS TABLE (Multiple Bible Versions)
-- ===================================================================
CREATE TABLE gospel_verse_translations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    verse_id UUID NOT NULL,
    translation_code VARCHAR(10) NOT NULL,
    text TEXT NOT NULL,                    -- Verse text in this translation
    footnotes TEXT,                        -- Translation-specific footnotes
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_verse_translations_verse
        FOREIGN KEY (verse_id) REFERENCES gospel_verses(id) ON DELETE CASCADE,
    CONSTRAINT fk_gospel_verse_translations_translation
        FOREIGN KEY (translation_code) REFERENCES supported_translations(translation_code) ON DELETE CASCADE,
    CONSTRAINT uq_gospel_verse_translations
        UNIQUE (verse_id, translation_code)
);

-- ===================================================================
-- GOSPEL_TRANSLATIONS TABLE (Multilingual Gospel Names)
-- ===================================================================
CREATE TABLE gospel_translations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    gospel_id INTEGER NOT NULL,
    lang_code VARCHAR(5) NOT NULL,         -- en, es, hi, fr, etc.
    name VARCHAR(100) NOT NULL,            -- Translated Gospel name
    author VARCHAR(200),                   -- Translated author name
    theme TEXT,                            -- Translated theme
    purpose TEXT,                          -- Translated purpose
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_translations_gospel
        FOREIGN KEY (gospel_id) REFERENCES gospels(gospel_id) ON DELETE CASCADE,
    CONSTRAINT uq_gospel_translations
        UNIQUE (gospel_id, lang_code)
);

-- ===================================================================
-- GOSPEL_CHAPTER_TRANSLATIONS TABLE
-- ===================================================================
CREATE TABLE gospel_chapter_translations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    chapter_id UUID NOT NULL,
    lang_code VARCHAR(5) NOT NULL,
    title VARCHAR(200),
    summary TEXT,
    theme TEXT,
    key_teachings TEXT[],
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_chapter_translations_chapter
        FOREIGN KEY (chapter_id) REFERENCES gospel_chapters(id) ON DELETE CASCADE,
    CONSTRAINT uq_gospel_chapter_translations
        UNIQUE (chapter_id, lang_code)
);

-- ===================================================================
-- GOSPEL_SCENARIOS TABLE (Gospel-Based Life Scenarios)
-- ===================================================================
CREATE TABLE gospel_scenarios (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(100),                 -- Faith, Love, Forgiveness, Courage, etc.
    gospel_id INTEGER,                     -- Referenced Gospel
    chapter_id UUID,                       -- Referenced chapter
    verse_id UUID,                         -- Referenced verse
    verse_reference VARCHAR(50),           -- e.g., "John 3:16-17"
    heart_response TEXT,                   -- Emotional/worldly response
    gospel_response TEXT,                  -- Gospel-based response
    gospel_wisdom TEXT,                    -- Gospel teaching
    action_steps TEXT[],                   -- Practical steps
    tags TEXT[],                           -- Searchable tags
    difficulty_level VARCHAR(20),          -- Easy, Medium, Hard
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_scenarios_gospel
        FOREIGN KEY (gospel_id) REFERENCES gospels(gospel_id) ON DELETE SET NULL,
    CONSTRAINT fk_gospel_scenarios_chapter
        FOREIGN KEY (chapter_id) REFERENCES gospel_chapters(id) ON DELETE SET NULL,
    CONSTRAINT fk_gospel_scenarios_verse
        FOREIGN KEY (verse_id) REFERENCES gospel_verses(id) ON DELETE SET NULL
);

-- ===================================================================
-- GOSPEL_SCENARIO_TRANSLATIONS TABLE
-- ===================================================================
CREATE TABLE gospel_scenario_translations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    scenario_id INTEGER NOT NULL,
    lang_code VARCHAR(5) NOT NULL,
    title VARCHAR(300) NOT NULL,
    description TEXT NOT NULL,
    category VARCHAR(100),
    heart_response TEXT,
    gospel_response TEXT,
    gospel_wisdom TEXT,
    action_steps TEXT[],
    tags TEXT[],
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    -- Constraints
    CONSTRAINT fk_gospel_scenario_translations_scenario
        FOREIGN KEY (scenario_id) REFERENCES gospel_scenarios(id) ON DELETE CASCADE,
    CONSTRAINT uq_gospel_scenario_translations
        UNIQUE (scenario_id, lang_code)
);

-- ===================================================================
-- PERFORMANCE INDEXES
-- ===================================================================

-- Gospels Indexes
CREATE INDEX idx_gospels_name ON gospels(name);

-- Gospel Chapters Indexes
CREATE INDEX idx_gospel_chapters_gospel ON gospel_chapters(gospel_id, chapter_number);
CREATE INDEX idx_gospel_chapters_lookup ON gospel_chapters(gospel_id);

-- Gospel Verses Indexes
CREATE INDEX idx_gospel_verses_gospel ON gospel_verses(gospel_id);
CREATE INDEX idx_gospel_verses_chapter ON gospel_verses(chapter_id);
CREATE INDEX idx_gospel_verses_reference ON gospel_verses(reference);
CREATE INDEX idx_gospel_verses_translation ON gospel_verses(translation_code);
CREATE INDEX idx_gospel_verses_themes ON gospel_verses USING gin(themes);
CREATE INDEX idx_gospel_verses_keywords ON gospel_verses USING gin(keywords);
CREATE INDEX idx_gospel_verses_search ON gospel_verses
    USING gin(to_tsvector('english', text));

-- Gospel Verse Translations Indexes
CREATE INDEX idx_gospel_verse_translations_verse ON gospel_verse_translations(verse_id);
CREATE INDEX idx_gospel_verse_translations_translation ON gospel_verse_translations(translation_code);
CREATE INDEX idx_gospel_verse_translations_search ON gospel_verse_translations
    USING gin(to_tsvector('english', text));

-- Supported Translations Indexes
CREATE INDEX idx_supported_translations_active ON supported_translations(is_active, sort_order);

-- Gospel Scenarios Indexes
CREATE INDEX idx_gospel_scenarios_gospel ON gospel_scenarios(gospel_id);
CREATE INDEX idx_gospel_scenarios_chapter ON gospel_scenarios(chapter_id);
CREATE INDEX idx_gospel_scenarios_verse ON gospel_scenarios(verse_id);
CREATE INDEX idx_gospel_scenarios_category ON gospel_scenarios(category);
CREATE INDEX idx_gospel_scenarios_tags ON gospel_scenarios USING gin(tags);
CREATE INDEX idx_gospel_scenarios_search ON gospel_scenarios
    USING gin(to_tsvector('english', title || ' ' || description));

-- ===================================================================
-- MATERIALIZED VIEWS FOR PERFORMANCE
-- ===================================================================

-- Gospel Summary View
CREATE MATERIALIZED VIEW gospel_summary AS
SELECT
    g.gospel_id,
    g.name,
    g.author,
    g.theme,
    g.chapter_count,
    g.verse_count,
    (SELECT COUNT(*) FROM gospel_scenarios gs WHERE gs.gospel_id = g.gospel_id) as scenario_count,
    g.created_at
FROM gospels g
ORDER BY g.gospel_id;

CREATE UNIQUE INDEX idx_gospel_summary_unique ON gospel_summary(gospel_id);

-- Gospel Chapter Summary View
CREATE MATERIALIZED VIEW gospel_chapter_summary AS
SELECT
    gc.id as chapter_id,
    gc.gospel_id,
    g.name as gospel_name,
    gc.chapter_number,
    gc.title,
    gc.summary,
    gc.theme,
    gc.verse_count,
    (SELECT COUNT(*) FROM gospel_scenarios gs WHERE gs.chapter_id = gc.id) as scenario_count,
    gc.created_at
FROM gospel_chapters gc
JOIN gospels g ON gc.gospel_id = g.gospel_id
ORDER BY gc.gospel_id, gc.chapter_number;

CREATE UNIQUE INDEX idx_gospel_chapter_summary_unique ON gospel_chapter_summary(chapter_id);

-- ===================================================================
-- RPC FUNCTIONS
-- ===================================================================

-- Function to get verses with translation fallback
CREATE OR REPLACE FUNCTION get_gospel_verses_with_translation(
    p_gospel_id INTEGER,
    p_chapter_number INTEGER,
    p_translation_code VARCHAR(10) DEFAULT 'NIV'
)
RETURNS TABLE (
    verse_id UUID,
    verse_number INTEGER,
    text TEXT,
    reference VARCHAR(20),
    translation_code VARCHAR(10),
    has_translation BOOLEAN
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        gv.id as verse_id,
        gv.verse_number,
        COALESCE(gvt.text, gv.text) as text,
        gv.reference,
        p_translation_code as translation_code,
        (gvt.id IS NOT NULL) as has_translation
    FROM gospel_verses gv
    JOIN gospel_chapters gc ON gv.chapter_id = gc.id
    LEFT JOIN gospel_verse_translations gvt ON gv.id = gvt.verse_id
        AND gvt.translation_code = p_translation_code
    WHERE gv.gospel_id = p_gospel_id
        AND gc.chapter_number = p_chapter_number
    ORDER BY gv.verse_number;
END;
$$;

-- Function to search verses by keyword
CREATE OR REPLACE FUNCTION search_gospel_verses(
    p_search_term TEXT,
    p_translation_code VARCHAR(10) DEFAULT 'NIV',
    p_limit INTEGER DEFAULT 50
)
RETURNS TABLE (
    verse_id UUID,
    gospel_name VARCHAR(50),
    reference VARCHAR(20),
    text TEXT,
    rank REAL
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        gv.id as verse_id,
        g.name as gospel_name,
        gv.reference,
        COALESCE(gvt.text, gv.text) as text,
        ts_rank(to_tsvector('english', COALESCE(gvt.text, gv.text)), plainto_tsquery('english', p_search_term)) as rank
    FROM gospel_verses gv
    JOIN gospels g ON gv.gospel_id = g.gospel_id
    LEFT JOIN gospel_verse_translations gvt ON gv.id = gvt.verse_id
        AND gvt.translation_code = p_translation_code
    WHERE to_tsvector('english', COALESCE(gvt.text, gv.text)) @@ plainto_tsquery('english', p_search_term)
    ORDER BY rank DESC
    LIMIT p_limit;
END;
$$;

-- Function to get scenarios by category
CREATE OR REPLACE FUNCTION get_scenarios_by_category(
    p_category VARCHAR(100),
    p_limit INTEGER DEFAULT 20
)
RETURNS TABLE (
    scenario_id INTEGER,
    title VARCHAR(300),
    description TEXT,
    verse_reference VARCHAR(50),
    gospel_wisdom TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        gs.id as scenario_id,
        gs.title,
        gs.description,
        gs.verse_reference,
        gs.gospel_wisdom
    FROM gospel_scenarios gs
    WHERE gs.category = p_category
    ORDER BY gs.created_at DESC
    LIMIT p_limit;
END;
$$;

-- Function to refresh materialized views
CREATE OR REPLACE FUNCTION refresh_gospel_views()
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    REFRESH MATERIALIZED VIEW CONCURRENTLY gospel_summary;
    REFRESH MATERIALIZED VIEW CONCURRENTLY gospel_chapter_summary;
END;
$$;

-- ===================================================================
-- TRIGGERS FOR AUTOMATIC UPDATES
-- ===================================================================

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_gospel_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Add triggers to all tables
CREATE TRIGGER tr_gospels_updated_at
    BEFORE UPDATE ON gospels
    FOR EACH ROW EXECUTE FUNCTION update_gospel_updated_at();

CREATE TRIGGER tr_gospel_chapters_updated_at
    BEFORE UPDATE ON gospel_chapters
    FOR EACH ROW EXECUTE FUNCTION update_gospel_updated_at();

CREATE TRIGGER tr_gospel_verses_updated_at
    BEFORE UPDATE ON gospel_verses
    FOR EACH ROW EXECUTE FUNCTION update_gospel_updated_at();

CREATE TRIGGER tr_gospel_verse_translations_updated_at
    BEFORE UPDATE ON gospel_verse_translations
    FOR EACH ROW EXECUTE FUNCTION update_gospel_updated_at();

CREATE TRIGGER tr_gospel_scenarios_updated_at
    BEFORE UPDATE ON gospel_scenarios
    FOR EACH ROW EXECUTE FUNCTION update_gospel_updated_at();

-- ===================================================================
-- SECURITY & PERMISSIONS (RLS Policies)
-- ===================================================================

-- Enable Row Level Security
ALTER TABLE gospels ENABLE ROW LEVEL SECURITY;
ALTER TABLE gospel_chapters ENABLE ROW LEVEL SECURITY;
ALTER TABLE gospel_verses ENABLE ROW LEVEL SECURITY;
ALTER TABLE gospel_verse_translations ENABLE ROW LEVEL SECURITY;
ALTER TABLE gospel_scenarios ENABLE ROW LEVEL SECURITY;
ALTER TABLE supported_translations ENABLE ROW LEVEL SECURITY;

-- Create policies for public read access
CREATE POLICY "Public read access for gospels" ON gospels FOR SELECT USING (true);
CREATE POLICY "Public read access for gospel_chapters" ON gospel_chapters FOR SELECT USING (true);
CREATE POLICY "Public read access for gospel_verses" ON gospel_verses FOR SELECT USING (true);
CREATE POLICY "Public read access for gospel_verse_translations" ON gospel_verse_translations FOR SELECT USING (true);
CREATE POLICY "Public read access for gospel_scenarios" ON gospel_scenarios FOR SELECT USING (true);
CREATE POLICY "Public read access for supported_translations" ON supported_translations FOR SELECT USING (true);

-- ===================================================================
-- VALIDATION QUERIES
-- ===================================================================

DO $$
BEGIN
    -- Test gospels
    ASSERT (SELECT COUNT(*) FROM gospels) = 4,
        'Expected 4 Gospels';

    -- Test translations
    ASSERT (SELECT COUNT(*) FROM supported_translations WHERE is_active = TRUE) >= 5,
        'Expected at least 5 active translations';

    -- Test primary translation
    ASSERT (SELECT COUNT(*) FROM supported_translations WHERE is_primary = TRUE) = 1,
        'Expected exactly 1 primary translation';

    -- Test tables
    ASSERT (SELECT COUNT(*) FROM information_schema.tables WHERE table_name = 'gospel_verses') = 1,
        'gospel_verses table not created';

    -- Test functions
    ASSERT (SELECT COUNT(*) FROM pg_proc WHERE proname = 'get_gospel_verses_with_translation') = 1,
        'get_gospel_verses_with_translation function not created';

    RAISE NOTICE 'GospelWisdom schema validation passed successfully!';
END
$$;

-- ===================================================================
-- SCHEMA CREATION COMPLETE
-- ===================================================================
COMMENT ON SCHEMA public IS 'GospelWisdom database schema - Production ready v1.0';
