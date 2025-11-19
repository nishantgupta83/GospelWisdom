-- ===================================================================
-- Transform GitaWisdom Scenarios to Gospel Format
-- File: 101_transform_scenarios_to_gospel.sql
-- Purpose: Migrate existing scenarios to Gospel-based content
-- Date: 2025-11-19
-- ===================================================================

-- ===================================================================
-- CATEGORY MAPPING: Gita → Gospel
-- ===================================================================

-- Create temporary mapping table for category transformation
CREATE TEMP TABLE category_mapping AS
SELECT * FROM (VALUES
    -- Gita Category → Gospel Category
    ('Duty and Righteousness', 'Justice & Righteousness'),
    ('Detachment', 'Peace & Contentment'),
    ('Devotion', 'Prayer & Communion'),
    ('Knowledge', 'Wisdom & Discernment'),
    ('Action', 'Service & Humility'),
    ('Renunciation', 'Temptation & Resistance'),
    ('Self-Control', 'Temptation & Resistance'),
    ('Faith', 'Faith & Trust'),
    ('Meditation', 'Prayer & Communion'),
    ('Yoga', 'Prayer & Communion'),
    ('Karma', 'Work & Calling'),
    ('Arjuna''s Dilemma', 'Courage & Boldness'),
    ('Bhakti', 'Love & Compassion'),
    ('Discipline', 'Perseverance'),
    ('Equanimity', 'Peace & Contentment'),
    ('Divine Nature', 'Hope & Perseverance'),
    ('Inner Peace', 'Peace & Contentment'),
    ('Life Purpose', 'Work & Calling'),
    ('Relationships', 'Family & Relationships'),
    ('Work Ethics', 'Work & Calling'),
    ('Decision Making', 'Wisdom & Discernment'),
    ('Stress Management', 'Peace & Contentment'),
    ('Leadership', 'Service & Humility'),
    ('Personal Growth', 'Hope & Perseverance'),
    ('Emotional Balance', 'Peace & Contentment')
) AS t(gita_category, gospel_category);

-- ===================================================================
-- BACKUP EXISTING SCENARIOS (if they exist)
-- ===================================================================

-- Create backup table for original scenarios
DROP TABLE IF EXISTS scenarios_backup_gita;
CREATE TABLE scenarios_backup_gita AS
SELECT * FROM scenarios WHERE id IS NOT NULL;

-- ===================================================================
-- SAMPLE GOSPEL SCENARIOS
-- ===================================================================

-- Insert sample Gospel scenarios to populate the database
INSERT INTO gospel_scenarios (
    title, description, category, gospel_id, verse_reference,
    heart_response, gospel_response, gospel_wisdom, action_steps, tags
) VALUES

-- Faith & Trust Category
(
    'Facing Uncertainty About Future',
    'You''re anxious about an upcoming major life decision (job change, relationship, health) and don''t know which path to take.',
    'Faith & Trust',
    1, -- Matthew
    'Matthew 6:25-34',
    'Worry constantly, try to control every outcome, lose sleep analyzing all possible scenarios, seek multiple opinions hoping for certainty.',
    'Trust in God''s provision, seek His guidance through prayer, take practical steps while surrendering the outcome, find peace in knowing God cares for you.',
    'Jesus teaches us not to worry about tomorrow, for each day has enough trouble of its own. When we seek first God''s kingdom and righteousness, all these things will be given to us as well.',
    ARRAY[
        'Start each day with prayer, specifically asking for guidance',
        'List practical steps you can take and take one step at a time',
        'Read Matthew 6:25-34 daily for reassurance',
        'Share your concerns with a trusted Christian friend',
        'Keep a gratitude journal to remember God''s past faithfulness'
    ],
    ARRAY['faith', 'trust', 'anxiety', 'worry', 'provision', 'future']
),

-- Forgiveness Category
(
    'Struggling to Forgive Someone Who Hurt You',
    'A friend, family member, or colleague deeply hurt you. You feel angry, betrayed, and find it hard to let go of the resentment.',
    'Forgiveness',
    4, -- Luke
    'Luke 23:34',
    'Hold onto bitterness, plan revenge, cut off all communication, constantly replay the offense in your mind, refuse to forgive until they apologize first.',
    'Choose to forgive as Christ forgave you, release the bitterness to God, pray for the person who hurt you, set healthy boundaries while extending grace.',
    'Even while being crucified, Jesus prayed, "Father, forgive them, for they do not know what they are doing." If Christ can forgive His executioners, we can find strength to forgive those who hurt us.',
    ARRAY[
        'Pray specifically for the person who hurt you',
        'Write down your feelings in a letter (don''t send it)',
        'Declare forgiveness verbally to God',
        'Set healthy boundaries if needed',
        'Seek counseling if trauma is deep',
        'Remember times you''ve needed forgiveness'
    ],
    ARRAY['forgiveness', 'hurt', 'bitterness', 'reconciliation', 'grace', 'healing']
),

-- Love & Compassion Category
(
    'Encountering Someone in Need',
    'You see a homeless person, struggling neighbor, or someone in crisis. You''re unsure whether to help or how to help without being taken advantage of.',
    'Love & Compassion',
    3, -- Luke
    'Luke 10:25-37',
    'Walk past quickly to avoid awkwardness, judge their situation, assume they''re lazy or will misuse help, worry what others will think if you stop.',
    'Show compassion as the Good Samaritan did, offer practical help within your means, treat them with dignity, trust God to guide how you help.',
    'The parable of the Good Samaritan teaches that our neighbor is anyone in need. Jesus calls us to show mercy actively, crossing social boundaries to help those in distress.',
    ARRAY[
        'Ask the person what they specifically need',
        'Offer food, water, or gift cards instead of cash if concerned',
        'Connect them with local resources (shelters, food banks)',
        'Treat them with respect and listen to their story',
        'Follow up if possible, building relationship',
        'Involve your church community for sustained help'
    ],
    ARRAY['compassion', 'service', 'love', 'neighbor', 'good samaritan', 'helping']
),

-- Service & Humility Category
(
    'Wanting Recognition for Your Good Deeds',
    'You''ve been serving diligently at church, helping friends, or volunteering, but feel unappreciated and wonder if your efforts matter.',
    'Service & Humility',
    1, -- Matthew
    'Matthew 6:1-4',
    'Get frustrated when others don''t notice, drop hints about what you''ve done, compare yourself to others, consider stopping if not appreciated.',
    'Serve in secret knowing God sees, find joy in the act of serving itself, remember you''re serving Christ through others, let go of need for recognition.',
    'Jesus teaches, "Do not let your left hand know what your right hand is doing, so that your giving may be in secret. Then your Father, who sees what is done in secret, will reward you."',
    ARRAY[
        'Serve in ways only God knows about',
        'Check your motives before serving',
        'Celebrate others'' contributions generously',
        'Find fulfillment in God''s approval alone',
        'Keep a private journal of how God uses you',
        'Remember Jesus washed feet without seeking praise'
    ],
    ARRAY['service', 'humility', 'pride', 'recognition', 'secret giving', 'motives']
),

-- Courage & Boldness Category
(
    'Afraid to Share Your Faith',
    'You have opportunities to share about Jesus with coworkers, friends, or family, but fear rejection, mockery, or damaging relationships.',
    'Courage & Boldness',
    2, -- Mark
    'Mark 8:38',
    'Stay silent about your faith, hide Christian symbols, change the subject when God comes up, blend in to avoid standing out.',
    'Speak boldly yet lovingly about your faith, live authentically as a Christian, trust God with the outcome, remember your eternal identity matters more than temporary approval.',
    'Jesus said, "If anyone is ashamed of me and my words... the Son of Man will be ashamed of them when he comes in his Father''s glory." Our courage to witness comes from knowing whose we are.',
    ARRAY[
        'Pray for opportunities and courage daily',
        'Start with your testimony - your personal story',
        'Live visibly as a Christian through actions first',
        'Ask questions to understand others'' beliefs',
        'Share in love without being preachy',
        'Trust the Holy Spirit to work through your words'
    ],
    ARRAY['evangelism', 'courage', 'witness', 'boldness', 'fear', 'faith sharing']
),

-- Prayer & Communion Category
(
    'Feeling Distant from God',
    'Your prayer life feels dry, you struggle to sense God''s presence, and spiritual disciplines feel like empty routines.',
    'Prayer & Communion',
    4, -- John
    'John 15:4-5',
    'Give up on prayer, rely only on your own strength, fill the void with busyness or distractions, assume God has abandoned you.',
    'Persist in prayer even when feelings fade, remain connected to Christ like a branch to a vine, trust God is working even when unseen.',
    'Jesus said, "Remain in me, as I also remain in you. No branch can bear fruit by itself; it must remain in the vine." Our spiritual life depends on staying connected to Christ through prayer.',
    ARRAY[
        'Set a consistent daily prayer time',
        'Use Scripture as prayer (Psalms especially)',
        'Try different prayer styles (journaling, walking, singing)',
        'Fast from something to create space for God',
        'Join a prayer group for accountability',
        'Remember feelings aren''t required for faithfulness'
    ],
    ARRAY['prayer', 'communion', 'spiritual dryness', 'abiding', 'intimacy with God']
);

-- ===================================================================
-- FUNCTION: Transform Existing Scenarios
-- ===================================================================

-- This function can be used to programmatically transform scenarios
-- when the old scenarios table structure matches the new gospel_scenarios

CREATE OR REPLACE FUNCTION transform_gita_to_gospel_scenarios()
RETURNS void
LANGUAGE plpgsql
AS $$
BEGIN
    -- Insert transformed scenarios from backup if structure exists
    -- This is a template - adjust column mapping based on actual structure

    INSERT INTO gospel_scenarios (
        title,
        description,
        category,
        heart_response,
        gospel_response,
        gospel_wisdom,
        action_steps,
        tags
    )
    SELECT
        sc_title,
        sc_description,
        COALESCE(cm.gospel_category, 'Wisdom & Discernment') as category,
        sc_heart_response,
        sc_duty_response as gospel_response,  -- Map duty → gospel
        sc_gita_wisdom as gospel_wisdom,      -- Transform to Gospel wisdom
        sc_action_steps,
        sc_tags
    FROM scenarios_backup_gita sg
    LEFT JOIN category_mapping cm ON sg.sc_category = cm.gita_category
    WHERE NOT EXISTS (
        SELECT 1 FROM gospel_scenarios gs
        WHERE gs.title = sg.sc_title
    );

    RAISE NOTICE 'Scenario transformation complete';
END;
$$;

-- ===================================================================
-- NOTES FOR MANUAL TRANSFORMATION
-- ===================================================================

/*
TO MANUALLY TRANSFORM SCENARIOS:

1. Review each scenario individually
2. Map Gita verse references → relevant Gospel verses
3. Update wisdom text from Gita teaching → Jesus' teaching
4. Adjust cultural context (dharma → kingdom values)
5. Ensure action steps align with Gospel principles

EXAMPLE TRANSFORMATION:
- Old: "Follow your dharma (duty)"
- New: "Seek first God's kingdom" (Matthew 6:33)

- Old: "Detach from results of actions"
- New: "Trust God with outcomes" (Proverbs 3:5-6, Matthew 6:34)

- Old: "Practice equanimity in success and failure"
- New: "Find peace in Christ regardless of circumstances" (Philippians 4:11-13)
*/

-- ===================================================================
-- VALIDATION QUERY
-- ===================================================================

-- Check transformed scenarios
SELECT
    category,
    COUNT(*) as scenario_count
FROM gospel_scenarios
GROUP BY category
ORDER BY category;

-- ===================================================================
-- MIGRATION COMPLETE
-- ===================================================================
COMMENT ON TABLE gospel_scenarios IS 'Gospel-based scenarios transformed from GitaWisdom baseline';
