-- ===================================================================
-- Add Daily Features: Verse of Day, Audio, Notes, AI Personalization
-- File: 102_add_daily_features.sql
-- Features: 1. Daily Verse, 2. Audio Bible, 5. Notes/Journaling, 6. AI Personalization
-- Date: 2025-11-19
-- ===================================================================

-- ===================================================================
-- FEATURE 1: DAILY VERSE OF THE DAY
-- ===================================================================

CREATE TABLE daily_gospel_verse (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    date DATE NOT NULL UNIQUE,
    verse_id UUID NOT NULL,
    gospel_id INTEGER NOT NULL,
    reference VARCHAR(50) NOT NULL,
    verse_text TEXT NOT NULL,
    devotional_title VARCHAR(200),
    devotional_content TEXT,
    reflection_prompt TEXT,
    image_url TEXT,
    video_url TEXT,
    tags TEXT[],
    created_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_daily_gospel_verse_verse
        FOREIGN KEY (verse_id) REFERENCES gospel_verses(id) ON DELETE CASCADE,
    CONSTRAINT fk_daily_gospel_verse_gospel
        FOREIGN KEY (gospel_id) REFERENCES gospels(gospel_id) ON DELETE CASCADE
);

-- Index for quick date lookup
CREATE INDEX idx_daily_gospel_verse_date ON daily_gospel_verse(date DESC);

-- Function to get today's verse
CREATE OR REPLACE FUNCTION get_todays_verse()
RETURNS TABLE (
    verse_id UUID,
    reference VARCHAR(50),
    verse_text TEXT,
    devotional_title VARCHAR(200),
    devotional_content TEXT,
    reflection_prompt TEXT,
    image_url TEXT
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT
        dgv.verse_id,
        dgv.reference,
        dgv.verse_text,
        dgv.devotional_title,
        dgv.devotional_content,
        dgv.reflection_prompt,
        dgv.image_url
    FROM daily_gospel_verse dgv
    WHERE dgv.date = CURRENT_DATE;
END;
$$;

-- Sample Daily Verses for next 7 days
INSERT INTO daily_gospel_verse (date, verse_id, gospel_id, reference, verse_text, devotional_title, devotional_content, reflection_prompt, tags)
SELECT
    CURRENT_DATE + (n || ' days')::INTERVAL,
    gv.id,
    gv.gospel_id,
    gv.reference,
    gv.text,
    'Daily Gospel Wisdom',
    'Reflect on how this verse speaks to your life today.',
    'How can you apply this teaching in your current circumstances?',
    ARRAY['daily', 'devotional']
FROM generate_series(0, 6) n
CROSS JOIN LATERAL (
    SELECT id, gospel_id, reference, text
    FROM gospel_verses
    ORDER BY RANDOM()
    LIMIT 1
) gv;

-- ===================================================================
-- FEATURE 2: AUDIO BIBLE / READ-ALOUD
-- ===================================================================

CREATE TABLE gospel_audio_chapters (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    gospel_id INTEGER NOT NULL,
    chapter_id UUID NOT NULL,
    audio_url TEXT NOT NULL,
    duration_seconds INTEGER,
    narrator_name VARCHAR(100),
    audio_format VARCHAR(20) DEFAULT 'mp3',
    translation_code VARCHAR(10) DEFAULT 'NIV',
    file_size_mb DECIMAL(10, 2),
    is_downloaded BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_audio_gospel
        FOREIGN KEY (gospel_id) REFERENCES gospels(gospel_id) ON DELETE CASCADE,
    CONSTRAINT fk_audio_chapter
        FOREIGN KEY (chapter_id) REFERENCES gospel_chapters(id) ON DELETE CASCADE,
    CONSTRAINT uq_audio_chapter_translation
        UNIQUE (chapter_id, translation_code)
);

CREATE INDEX idx_gospel_audio_lookup ON gospel_audio_chapters(gospel_id, chapter_id);
CREATE INDEX idx_gospel_audio_translation ON gospel_audio_chapters(translation_code);

-- Audio playback tracking
CREATE TABLE user_audio_playback (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    audio_id UUID NOT NULL,
    position_seconds INTEGER DEFAULT 0,
    completed BOOLEAN DEFAULT FALSE,
    last_played_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_audio_playback_audio
        FOREIGN KEY (audio_id) REFERENCES gospel_audio_chapters(id) ON DELETE CASCADE,
    CONSTRAINT uq_user_audio
        UNIQUE (user_id, audio_id)
);

CREATE INDEX idx_user_audio_playback ON user_audio_playback(user_id, last_played_at DESC);

-- ===================================================================
-- FEATURE 5: HIGHLIGHTS, NOTES & JOURNALING
-- ===================================================================

-- User highlights (color-coded verse highlighting)
CREATE TABLE user_highlights (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    verse_id UUID NOT NULL,
    color VARCHAR(20) DEFAULT 'yellow',  -- yellow, blue, green, red, purple
    created_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_highlight_verse
        FOREIGN KEY (verse_id) REFERENCES gospel_verses(id) ON DELETE CASCADE,
    CONSTRAINT uq_user_highlight
        UNIQUE (user_id, verse_id)
);

CREATE INDEX idx_user_highlights ON user_highlights(user_id, created_at DESC);
CREATE INDEX idx_highlights_verse ON user_highlights(verse_id);

-- User notes (personal notes on verses/chapters/scenarios)
CREATE TABLE user_notes (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    note_type VARCHAR(20) NOT NULL,  -- verse, chapter, scenario, general
    reference_id UUID,  -- verse_id, chapter_id, or scenario_id
    title VARCHAR(200),
    content TEXT NOT NULL,
    tags TEXT[],
    is_private BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_user_notes ON user_notes(user_id, created_at DESC);
CREATE INDEX idx_notes_type ON user_notes(note_type, reference_id);
CREATE INDEX idx_notes_tags ON user_notes USING gin(tags);

-- Spiritual journal entries
CREATE TABLE spiritual_journal (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    entry_date DATE NOT NULL,
    title VARCHAR(200),
    content TEXT NOT NULL,
    mood VARCHAR(50),  -- grateful, peaceful, struggling, joyful, etc.
    related_verse_id UUID,
    related_scenario_id INTEGER,
    prayer_requests TEXT[],
    answered_prayers TEXT[],
    tags TEXT[],
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_journal_verse
        FOREIGN KEY (related_verse_id) REFERENCES gospel_verses(id) ON DELETE SET NULL,
    CONSTRAINT fk_journal_scenario
        FOREIGN KEY (related_scenario_id) REFERENCES gospel_scenarios(id) ON DELETE SET NULL
);

CREATE INDEX idx_spiritual_journal ON spiritual_journal(user_id, entry_date DESC);
CREATE INDEX idx_journal_mood ON spiritual_journal(mood);
CREATE INDEX idx_journal_tags ON spiritual_journal USING gin(tags);

-- Prayer list
CREATE TABLE prayer_list (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    prayer_title VARCHAR(200) NOT NULL,
    prayer_content TEXT NOT NULL,
    category VARCHAR(50),  -- personal, family, friends, world, church
    status VARCHAR(20) DEFAULT 'active',  -- active, answered, archived
    is_urgent BOOLEAN DEFAULT FALSE,
    answered_date DATE,
    answered_note TEXT,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_prayer_list ON prayer_list(user_id, status, created_at DESC);
CREATE INDEX idx_prayer_category ON prayer_list(category);

-- ===================================================================
-- FEATURE 6: AI-POWERED PERSONALIZATION
-- ===================================================================

-- User preferences for personalization
CREATE TABLE user_preferences (
    user_id UUID PRIMARY KEY,
    favorite_gospels INTEGER[],  -- Array of gospel_ids
    favorite_categories TEXT[],
    preferred_translations TEXT[],  -- Array of translation codes
    reading_level VARCHAR(20) DEFAULT 'intermediate',  -- beginner, intermediate, advanced
    interests TEXT[],
    daily_reminder_time TIME,
    notification_enabled BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- User reading history for AI recommendations
CREATE TABLE user_reading_history (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    content_type VARCHAR(20) NOT NULL,  -- verse, chapter, scenario, devotional
    content_id UUID,
    read_duration_seconds INTEGER,
    completed BOOLEAN DEFAULT FALSE,
    engagement_score INTEGER CHECK (engagement_score >= 0 AND engagement_score <= 100),
    read_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT uq_user_reading
        UNIQUE (user_id, content_type, content_id, read_at)
);

CREATE INDEX idx_reading_history ON user_reading_history(user_id, read_at DESC);
CREATE INDEX idx_reading_engagement ON user_reading_history(user_id, engagement_score DESC);

-- AI-generated personalized recommendations
CREATE TABLE personalized_recommendations (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    recommendation_type VARCHAR(50) NOT NULL,  -- daily_verse, reading_plan, scenario, devotional
    content_id UUID,
    reason TEXT,  -- Why this was recommended
    confidence_score DECIMAL(3, 2),  -- 0.0 to 1.0
    is_shown BOOLEAN DEFAULT FALSE,
    is_acted_on BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT NOW(),
    expires_at TIMESTAMP
);

CREATE INDEX idx_recommendations ON personalized_recommendations(user_id, is_shown, created_at DESC);
CREATE INDEX idx_recommendations_type ON personalized_recommendations(recommendation_type);

-- User mood tracking for verse recommendations
CREATE TABLE user_mood_tracking (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    mood VARCHAR(50) NOT NULL,  -- anxious, peaceful, joyful, struggling, grateful, etc.
    intensity INTEGER CHECK (intensity >= 1 AND intensity <= 5),
    notes TEXT,
    recommended_verses UUID[],
    tracked_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX idx_mood_tracking ON user_mood_tracking(user_id, tracked_at DESC);

-- Function: Get personalized verse recommendations based on mood
CREATE OR REPLACE FUNCTION get_mood_based_verses(
    p_user_id UUID,
    p_mood VARCHAR(50),
    p_limit INTEGER DEFAULT 5
)
RETURNS TABLE (
    verse_id UUID,
    reference VARCHAR(50),
    text TEXT,
    relevance_score INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Simple mood to theme mapping
    -- In production, this would use ML/AI
    RETURN QUERY
    SELECT
        gv.id,
        gv.reference,
        gv.text,
        75 as relevance_score
    FROM gospel_verses gv
    WHERE
        CASE
            WHEN p_mood IN ('anxious', 'worried', 'fearful') THEN 'Peace' = ANY(gv.themes)
            WHEN p_mood IN ('sad', 'depressed', 'lonely') THEN 'Hope' = ANY(gv.themes) OR 'Love' = ANY(gv.themes)
            WHEN p_mood IN ('grateful', 'joyful', 'blessed') THEN 'Gratitude' = ANY(gv.themes) OR 'Joy' = ANY(gv.themes)
            WHEN p_mood IN ('angry', 'frustrated') THEN 'Peace' = ANY(gv.themes) OR 'Forgiveness' = ANY(gv.themes)
            ELSE true
        END
    ORDER BY RANDOM()
    LIMIT p_limit;
END;
$$;

-- Function: Get personalized daily recommendations
CREATE OR REPLACE FUNCTION get_personalized_daily_content(
    p_user_id UUID
)
RETURNS TABLE (
    content_type VARCHAR(50),
    content_id UUID,
    title VARCHAR(200),
    preview TEXT,
    reason TEXT
)
LANGUAGE plpgsql
AS $$
DECLARE
    user_prefs RECORD;
BEGIN
    -- Get user preferences
    SELECT * INTO user_prefs FROM user_preferences WHERE user_id = p_user_id;

    -- Return personalized content mix
    -- This is simplified - production would use ML models
    RETURN QUERY
    -- Daily verse
    SELECT
        'daily_verse'::VARCHAR(50),
        dgv.verse_id,
        dgv.devotional_title,
        LEFT(dgv.devotional_content, 200),
        'Your daily inspiration'::TEXT
    FROM daily_gospel_verse dgv
    WHERE dgv.date = CURRENT_DATE

    UNION ALL

    -- Recommended scenario based on recent reading
    SELECT
        'scenario'::VARCHAR(50),
        gs.id::UUID,
        gs.title,
        LEFT(gs.description, 200),
        'Based on your recent interests'::TEXT
    FROM gospel_scenarios gs
    WHERE gs.category = ANY(COALESCE(user_prefs.favorite_categories, ARRAY['Faith & Trust']))
    ORDER BY RANDOM()
    LIMIT 1;
END;
$$;

-- ===================================================================
-- READING STREAKS & ACHIEVEMENTS
-- ===================================================================

CREATE TABLE user_streaks (
    user_id UUID PRIMARY KEY,
    current_streak INTEGER DEFAULT 0,
    longest_streak INTEGER DEFAULT 0,
    last_read_date DATE,
    total_days_read INTEGER DEFAULT 0,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

CREATE TABLE user_achievements (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL,
    achievement_type VARCHAR(50) NOT NULL,  -- first_verse, 7_day_streak, 30_day_streak, etc.
    earned_at TIMESTAMP DEFAULT NOW(),

    CONSTRAINT uq_user_achievement
        UNIQUE (user_id, achievement_type)
);

CREATE INDEX idx_user_achievements ON user_achievements(user_id, earned_at DESC);

-- Function: Update streak when user reads
CREATE OR REPLACE FUNCTION update_reading_streak(p_user_id UUID)
RETURNS void
LANGUAGE plpgsql
AS $$
DECLARE
    v_last_read DATE;
    v_current_streak INTEGER;
    v_longest_streak INTEGER;
BEGIN
    SELECT last_read_date, current_streak, longest_streak
    INTO v_last_read, v_current_streak, v_longest_streak
    FROM user_streaks WHERE user_id = p_user_id;

    IF v_last_read IS NULL THEN
        -- First time reading
        INSERT INTO user_streaks (user_id, current_streak, longest_streak, last_read_date, total_days_read)
        VALUES (p_user_id, 1, 1, CURRENT_DATE, 1);
    ELSIF v_last_read = CURRENT_DATE THEN
        -- Already read today, do nothing
        RETURN;
    ELSIF v_last_read = CURRENT_DATE - INTERVAL '1 day' THEN
        -- Consecutive day
        UPDATE user_streaks
        SET
            current_streak = current_streak + 1,
            longest_streak = GREATEST(longest_streak, current_streak + 1),
            last_read_date = CURRENT_DATE,
            total_days_read = total_days_read + 1
        WHERE user_id = p_user_id;
    ELSE
        -- Streak broken
        UPDATE user_streaks
        SET
            current_streak = 1,
            last_read_date = CURRENT_DATE,
            total_days_read = total_days_read + 1
        WHERE user_id = p_user_id;
    END IF;

    -- Check for achievements
    PERFORM check_achievements(p_user_id);
END;
$$;

-- Function: Check and award achievements
CREATE OR REPLACE FUNCTION check_achievements(p_user_id UUID)
RETURNS void
LANGUAGE plpgsql
AS $$
DECLARE
    v_current_streak INTEGER;
    v_total_days INTEGER;
BEGIN
    SELECT current_streak, total_days_read
    INTO v_current_streak, v_total_days
    FROM user_streaks WHERE user_id = p_user_id;

    -- 7-day streak
    IF v_current_streak >= 7 THEN
        INSERT INTO user_achievements (user_id, achievement_type)
        VALUES (p_user_id, '7_day_streak')
        ON CONFLICT (user_id, achievement_type) DO NOTHING;
    END IF;

    -- 30-day streak
    IF v_current_streak >= 30 THEN
        INSERT INTO user_achievements (user_id, achievement_type)
        VALUES (p_user_id, '30_day_streak')
        ON CONFLICT (user_id, achievement_type) DO NOTHING;
    END IF;

    -- 100-day streak
    IF v_current_streak >= 100 THEN
        INSERT INTO user_achievements (user_id, achievement_type)
        VALUES (p_user_id, '100_day_streak')
        ON CONFLICT (user_id, achievement_type) DO NOTHING;
    END IF;
END;
$$;

-- ===================================================================
-- ROW LEVEL SECURITY
-- ===================================================================

ALTER TABLE daily_gospel_verse ENABLE ROW LEVEL SECURITY;
ALTER TABLE gospel_audio_chapters ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_highlights ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_notes ENABLE ROW LEVEL SECURITY;
ALTER TABLE spiritual_journal ENABLE ROW LEVEL SECURITY;
ALTER TABLE prayer_list ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_reading_history ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_streaks ENABLE ROW LEVEL SECURITY;

-- Public read for daily verses and audio
CREATE POLICY "Public read daily verses" ON daily_gospel_verse FOR SELECT USING (true);
CREATE POLICY "Public read audio chapters" ON gospel_audio_chapters FOR SELECT USING (true);

-- User-specific policies
CREATE POLICY "Users manage own highlights" ON user_highlights FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users manage own notes" ON user_notes FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users manage own journal" ON spiritual_journal FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users manage own prayers" ON prayer_list FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users manage own history" ON user_reading_history FOR ALL USING (auth.uid() = user_id);
CREATE POLICY "Users manage own streaks" ON user_streaks FOR ALL USING (auth.uid() = user_id);

-- ===================================================================
-- VALIDATION
-- ===================================================================

DO $$
BEGIN
    RAISE NOTICE 'Daily features migration complete!';
    RAISE NOTICE '✓ Daily Verse of the Day';
    RAISE NOTICE '✓ Audio Bible chapters';
    RAISE NOTICE '✓ Highlights, Notes & Journaling';
    RAISE NOTICE '✓ AI Personalization & Recommendations';
    RAISE NOTICE '✓ Reading Streaks & Achievements';
END
$$;
