-- ===================================================================
-- CREATE OLD SCHEMA FOR APP COMPATIBILITY
-- This creates the tables the app currently expects (from GitaWisdom)
-- Execute this in Supabase SQL Editor AFTER the Gospel schema
-- ===================================================================

-- ===================================================================
-- CHAPTERS TABLE (Old Schema - 18 Gita Chapters → 4 Gospels)
-- ===================================================================
CREATE TABLE IF NOT EXISTS chapters (
    ch_chapter_id INTEGER PRIMARY KEY,
    ch_title VARCHAR(200) NOT NULL,
    ch_subtitle VARCHAR(300),
    ch_summary TEXT,
    ch_verse_count INTEGER,
    ch_theme VARCHAR(200),
    ch_key_teachings TEXT[],
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE chapters ENABLE ROW LEVEL SECURITY;

-- Public read policy
CREATE POLICY "Public read access for chapters" ON chapters FOR SELECT USING (true);

-- ===================================================================
-- POPULATE WITH 4 GOSPELS (mapped to chapters 1-4)
-- ===================================================================
INSERT INTO chapters (ch_chapter_id, ch_title, ch_subtitle, ch_summary, ch_verse_count, ch_theme, ch_key_teachings)
VALUES
-- Matthew (Chapter 1)
(1, 'Matthew', 'The Gospel of the Messiah', 'The Gospel of Matthew presents Jesus as the promised Messiah and King, fulfilling Old Testament prophecies.', 1071, 'Kingdom of Heaven', ARRAY['Messiah', 'Kingdom of Heaven', 'Fulfillment of Prophecy', 'Righteousness', 'Discipleship', 'Teaching']),

-- Mark (Chapter 2)
(2, 'Mark', 'The Gospel of Action', 'The Gospel of Mark portrays Jesus as the Suffering Servant who came to serve and give His life as a ransom for many.', 678, 'Service and Sacrifice', ARRAY['Servanthood', 'Action', 'Suffering', 'Discipleship', 'Power of Jesus']),

-- Luke (Chapter 3)
(3, 'Luke', 'The Gospel for All People', 'The Gospel of Luke emphasizes Jesus as the Savior of all people, showing His compassion for the marginalized and outcasts.', 1151, 'Compassion and Grace', ARRAY['Universal Salvation', 'Prayer', 'Holy Spirit', 'Women and Outcasts', 'Joy']),

-- John (Chapter 4)
(4, 'John', 'The Gospel of Belief', 'The Gospel of John reveals Jesus as the Son of God and the source of eternal life for all who believe in Him.', 879, 'Eternal Life', ARRAY['Divinity of Jesus', 'Eternal Life', 'Love', 'Belief/Faith', 'Signs and Wonders']);

-- ===================================================================
-- VERSES TABLE (Old Schema)
-- ===================================================================
CREATE TABLE IF NOT EXISTS verses (
    v_id SERIAL PRIMARY KEY,
    v_chapter_id INTEGER NOT NULL REFERENCES chapters(ch_chapter_id),
    v_verse_id INTEGER NOT NULL,
    v_description TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW(),

    UNIQUE(v_chapter_id, v_verse_id)
);

-- Enable RLS
ALTER TABLE verses ENABLE ROW LEVEL SECURITY;

-- Public read policy
CREATE POLICY "Public read access for verses" ON verses FOR SELECT USING (true);

-- ===================================================================
-- POPULATE VERSES (Map Gospel verses to old schema)
-- ===================================================================

-- John 3:16-17 (Gospel 4 → Chapter 4)
INSERT INTO verses (v_chapter_id, v_verse_id, v_description)
VALUES
(4, 16, 'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life. - John 3:16'),
(4, 17, 'For God did not send his Son into the world to condemn the world, but to save the world through him. - John 3:17');

-- John 14:6 (Gospel 4 → Chapter 4)
INSERT INTO verses (v_chapter_id, v_verse_id, v_description)
VALUES
(4, 6, 'Jesus answered, "I am the way and the truth and the life. No one comes to the Father except through me." - John 14:6');

-- Matthew verses (Gospel 1 → Chapter 1)
INSERT INTO verses (v_chapter_id, v_verse_id, v_description)
VALUES
(1, 14, 'You are the light of the world. A town built on a hill cannot be hidden. - Matthew 5:14'),
(1, 15, 'Neither do people light a lamp and put it under a bowl. Instead they put it on its stand, and it gives light to everyone in the house. - Matthew 5:15'),
(1, 16, 'In the same way, let your light shine before others, that they may see your good deeds and glorify your Father in heaven. - Matthew 5:16'),
(1, 33, 'But seek first his kingdom and his righteousness, and all these things will be given to you as well. - Matthew 6:33'),
(1, 28, 'Come to me, all you who are weary and burdened, and I will give you rest. - Matthew 11:28'),
(1, 29, 'Take my yoke upon you and learn from me, for I am gentle and humble in heart, and you will find rest for your souls. - Matthew 11:29'),
(1, 30, 'For my yoke is easy and my burden is light. - Matthew 11:30');

-- Luke verses (Gospel 3 → Chapter 3)
INSERT INTO verses (v_chapter_id, v_verse_id, v_description)
VALUES
(3, 27, 'But to you who are listening I say: Love your enemies, do good to those who hate you, - Luke 6:27'),
(3, 28, 'bless those who curse you, pray for those who mistreat you. - Luke 6:28'),
(3, 31, 'Do to others as you would have them do to you. - Luke 6:31');

-- John 13 verses (Gospel 4 → Chapter 4)
INSERT INTO verses (v_chapter_id, v_verse_id, v_description)
VALUES
(4, 34, 'A new command I give you: Love one another. As I have loved you, so you must love one another. - John 13:34'),
(4, 35, 'By this everyone will know that you are my disciples, if you love one another. - John 13:35');

-- ===================================================================
-- SCENARIOS TABLE (Old Schema)
-- ===================================================================
CREATE TABLE IF NOT EXISTS scenarios (
    sc_id SERIAL PRIMARY KEY,
    sc_title VARCHAR(300) NOT NULL,
    sc_description TEXT NOT NULL,
    sc_category VARCHAR(100),
    sc_chapter INTEGER REFERENCES chapters(ch_chapter_id),
    sc_heart_response TEXT,
    sc_duty_response TEXT,
    sc_gospel_wisdom TEXT,  -- Changed from sc_gita_wisdom
    sc_verse TEXT,
    sc_verse_number VARCHAR(50),
    sc_tags TEXT[],
    sc_action_steps TEXT[],
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE scenarios ENABLE ROW LEVEL SECURITY;

-- Public read policy
CREATE POLICY "Public read access for scenarios" ON scenarios FOR SELECT USING (true);

-- ===================================================================
-- POPULATE SCENARIOS (Gospel-based scenarios)
-- ===================================================================
INSERT INTO scenarios (sc_title, sc_description, sc_category, sc_chapter, sc_heart_response, sc_duty_response, sc_gospel_wisdom, sc_verse, sc_verse_number, sc_tags, sc_action_steps)
VALUES
(
    'Career Decision: Choosing Between Money and Purpose',
    'You have two job offers: one pays significantly more but feels empty, the other pays less but aligns with your values and passion.',
    'Career & Purpose',
    1,  -- Matthew
    'Take the higher-paying job. Financial security is important, and you can find purpose outside of work. The money will give you options and stability.',
    'Choose the job that aligns with your calling. Work is not just about money—it''s about serving others and using your gifts. True fulfillment comes from living with purpose.',
    'Jesus teaches us to seek first the Kingdom of God and His righteousness. Material wealth is temporary, but living according to your calling brings lasting fulfillment. Consider which path allows you to better serve others and grow spiritually.',
    'But seek first his kingdom and his righteousness, and all these things will be given to you as well.',
    'Matthew 6:33',
    ARRAY['career', 'purpose', 'money', 'calling', 'wisdom'],
    ARRAY[
        'Pray for wisdom and clarity about your calling',
        'Consider which role allows you to better serve others',
        'Reflect on your long-term vision for your life',
        'Seek counsel from trusted mentors'
    ]
),

(
    'Forgiveness: Should I Reconcile with Someone Who Hurt Me?',
    'A family member or friend has deeply hurt you. They''ve apologized, but the pain is still fresh. Should you forgive and reconcile?',
    'Forgiveness & Relationships',
    3,  -- Luke
    'It''s too soon. You need more time to heal. They don''t deserve forgiveness yet, and maintaining distance protects you from further hurt.',
    'Choose forgiveness, not for them, but for your own peace. Holding onto bitterness only hurts you. Reconciliation may take time, but forgiveness can begin now.',
    'Jesus teaches radical forgiveness—not because others deserve it, but because we have been forgiven. Forgiveness frees your heart from bitterness and opens the door to healing and restoration.',
    'Bear with each other and forgive one another if any of you has a grievance against someone. Forgive as the Lord forgave you.',
    'Luke 6:37',
    ARRAY['forgiveness', 'relationships', 'healing', 'family', 'hurt'],
    ARRAY[
        'Acknowledge your pain and bring it to God in prayer',
        'Choose to forgive, even if reconciliation takes time',
        'Set healthy boundaries while keeping your heart open',
        'Seek pastoral counsel if needed'
    ]
),

(
    'Anxiety: Worrying About the Future',
    'You''re consumed by worry about the future—finances, health, relationships. The uncertainty feels overwhelming.',
    'Peace & Trust',
    1,  -- Matthew
    'These worries are valid. You need to plan and prepare for every possible outcome. Staying vigilant keeps you safe.',
    'Trust God with your future. Worrying doesn''t add a single hour to your life. Do what you can today, and surrender the rest to God.',
    'Jesus calls us to trust in God''s provision and care. Anxiety steals our peace and prevents us from experiencing God''s presence today. Cast your worries on Him, for He cares deeply for you.',
    'Do not be anxious about anything, but in every situation, by prayer and petition, with thanksgiving, present your requests to God.',
    'Matthew 6:25-34',
    ARRAY['anxiety', 'worry', 'peace', 'trust', 'fear'],
    ARRAY[
        'Write down your worries and bring them to God in prayer',
        'Practice gratitude for God''s provision today',
        'Take one small step forward instead of trying to solve everything',
        'Meditate on Scripture about God''s faithfulness'
    ]
),

(
    'Workplace Conflict: Dealing with a Difficult Colleague',
    'A coworker consistently takes credit for your work and undermines you in meetings. You''re frustrated and considering confrontation.',
    'Work & Integrity',
    1,  -- Matthew
    'Confront them publicly in the next meeting. Show everyone what they''re doing. They need to be exposed and held accountable.',
    'Address it privately with grace and honesty. Seek to understand their perspective while standing firm in truth. Let your work speak for itself.',
    'Jesus teaches us to resolve conflicts with humility and love. Confrontation can be necessary, but it should be done with the goal of restoration, not revenge. Trust that God sees your work and will vindicate you in His timing.',
    'If your brother or sister sins, go and point out their fault, just between the two of you.',
    'Matthew 18:15',
    ARRAY['workplace', 'conflict', 'integrity', 'humility', 'justice'],
    ARRAY[
        'Pray for wisdom and a humble heart',
        'Document your contributions calmly and factually',
        'Have a private conversation with grace and honesty',
        'Involve leadership only if necessary'
    ]
),

(
    'Service: Should I Give to Someone Who Might Misuse It?',
    'A homeless person asks for money. You suspect they might use it for drugs or alcohol. Should you still give?',
    'Generosity & Compassion',
    1,  -- Matthew
    'Don''t give cash—they''ll just waste it. If you want to help, buy them food or direct them to a shelter.',
    'Give with compassion, trusting God with the outcome. Your responsibility is to respond with love; what they do with it is between them and God.',
    'Jesus calls us to give generously without judgment. While wisdom is important, love compels us to see the person''s dignity first. Give as you feel led, whether it''s money, food, or time—and trust God with the rest.',
    'Give to the one who asks you, and do not turn away from the one who wants to borrow from you.',
    'Matthew 5:42',
    ARRAY['generosity', 'compassion', 'service', 'homelessness', 'giving'],
    ARRAY[
        'See the person as God sees them—loved and valuable',
        'Give as you feel led, trusting God with the outcome',
        'Consider alternative ways to help if you''re uncomfortable with cash',
        'Engage with them as a person, not just a need'
    ]
),

(
    'Love vs Fear: Reaching Out to Someone Different',
    'You want to build a friendship with someone from a very different background or belief system, but you''re afraid of what others might think or how it might affect you.',
    'Love & Courage',
    4,  -- John
    'Stay within your comfort zone. You have enough friends, and crossing cultural or ideological lines might complicate your life or damage your reputation.',
    'Love boldly. Jesus crossed every barrier to reach people. Your calling is to love like He did, regardless of what others think. Authentic relationships transform both parties.',
    'Jesus'' love knew no boundaries. He ate with tax collectors, touched lepers, and spoke to Samaritans. Our love should reflect His—fearless, genuine, and transformative. Love breaks down walls and builds bridges.',
    'A new command I give you: Love one another. As I have loved you, so you must love one another.',
    'John 13:34-35',
    ARRAY['love', 'courage', 'friendship', 'diversity', 'witness'],
    ARRAY[
        'Pray for courage and genuine love',
        'Take a small step: invite them for coffee or a meal',
        'Listen more than you speak; seek to understand their story',
        'Trust that God''s love working through you can change hearts'
    ]
);

-- ===================================================================
-- INDEXES FOR PERFORMANCE
-- ===================================================================
CREATE INDEX IF NOT EXISTS idx_verses_chapter ON verses(v_chapter_id);
CREATE INDEX IF NOT EXISTS idx_scenarios_chapter ON scenarios(sc_chapter);
CREATE INDEX IF NOT EXISTS idx_scenarios_category ON scenarios(sc_category);
CREATE INDEX IF NOT EXISTS idx_scenarios_tags ON scenarios USING gin(sc_tags);

-- ===================================================================
-- VERIFICATION
-- ===================================================================
DO $$
DECLARE
    chapter_count INTEGER;
    verse_count INTEGER;
    scenario_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO chapter_count FROM chapters;
    SELECT COUNT(*) INTO verse_count FROM verses;
    SELECT COUNT(*) INTO scenario_count FROM scenarios;

    RAISE NOTICE '========================================';
    RAISE NOTICE 'OLD SCHEMA COMPATIBILITY LAYER CREATED!';
    RAISE NOTICE '========================================';
    RAISE NOTICE 'Chapters (Gospels): %', chapter_count;
    RAISE NOTICE 'Verses: %', verse_count;
    RAISE NOTICE 'Scenarios: %', scenario_count;
    RAISE NOTICE '========================================';

    ASSERT chapter_count = 4, 'Expected 4 chapters (Gospels)';
    ASSERT verse_count >= 15, 'Expected at least 15 verses';
    ASSERT scenario_count >= 6, 'Expected at least 6 scenarios';

    RAISE NOTICE 'App compatibility layer ready!';
    RAISE NOTICE 'Your app should now display Gospel content!';
END $$;
