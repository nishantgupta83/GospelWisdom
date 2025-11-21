-- =====================================================================
-- GOSPELWISDOM - COMPLETE DATABASE SETUP
-- Execute this entire file in your Supabase SQL Editor
-- Project: zcxyvsnfffiapwarcmht
-- =====================================================================

-- First, run the main schema creation
-- Copy contents from: supabase/migrations/100_create_gospelwisdom_schema.sql
-- OR execute it directly if you have it open

-- =====================================================================
-- PART 2: POPULATE GOSPEL CHAPTERS
-- =====================================================================

-- Matthew chapters (28 chapters)
INSERT INTO gospel_chapters (gospel_id, chapter_number, title, summary, verse_count, theme) VALUES
(1, 1, 'The Genealogy and Birth of Jesus', 'The genealogy of Jesus and His miraculous birth announced to Joseph', 25, 'Messiah''s arrival'),
(1, 2, 'The Visit of the Magi', 'Wise men visit baby Jesus; escape to Egypt; Herod''s massacre', 23, 'Worship and persecution'),
(1, 3, 'John the Baptist Prepares the Way', 'John baptizes and proclaims the coming kingdom; Jesus is baptized', 17, 'Repentance'),
(1, 4, 'The Temptation and Early Ministry', 'Jesus is tempted; begins ministry; calls first disciples', 25, 'Overcoming temptation'),
(1, 5, 'The Sermon on the Mount (Part 1)', 'Beatitudes; salt and light; fulfillment of the Law', 48, 'Kingdom living'),
(1, 6, 'The Sermon on the Mount (Part 2)', 'Prayer, fasting, treasures in heaven; do not worry', 34, 'Spiritual priorities'),
(1, 7, 'The Sermon on the Mount (Part 3)', 'Judging others; ask, seek, knock; narrow gate; wise builder', 29, 'Practical righteousness'),
(1, 8, 'Miracles of Healing', 'Healing the leper, centurion''s servant, many others', 34, 'Jesus'' power'),
(1, 9, 'More Miracles and Calling of Matthew', 'Healing paralytic, raising dead girl, calling Matthew', 38, 'Authority to forgive'),
(1, 10, 'The Twelve Apostles', 'Jesus sends out the twelve with authority and instructions', 42, 'Mission and witness'),
(1, 11, 'John''s Question and Jesus'' Response', 'John in prison; Jesus praises John; woes to cities', 30, 'Faith and rejection'),
(1, 12, 'Lord of the Sabbath', 'Sabbath controversies; Beelzebul accusation; sign of Jonah', 50, 'True rest'),
(1, 13, 'Parables of the Kingdom', 'Sower, weeds, mustard seed, hidden treasure, pearl, net', 58, 'Kingdom mysteries'),
(1, 14, 'John Beheaded; Feeding of 5000', 'John''s death; Jesus feeds 5000; walks on water', 36, 'Compassion and faith'),
(1, 15, 'Clean and Unclean', 'Pharisees'' traditions; Canaanite woman''s faith; feeding 4000', 39, 'Heart purity'),
(1, 16, 'Peter''s Confession', 'Peter confesses Jesus as Christ; first passion prediction', 28, 'Christ''s identity'),
(1, 17, 'The Transfiguration', 'Jesus is transfigured; healing of demon-possessed boy', 27, 'Glory revealed'),
(1, 18, 'Teaching on Humility and Forgiveness', 'Greatest in kingdom; lost sheep; church discipline; forgiveness', 35, 'Humility and mercy'),
(1, 19, 'Teaching on Divorce and Children', 'Divorce, blessing children, rich young man, workers', 30, 'Kingdom values'),
(1, 20, 'Workers in the Vineyard', 'Parable of workers; third passion prediction; request of James and John', 34, 'Grace and service'),
(1, 21, 'Triumphal Entry', 'Entry into Jerusalem; cleansing temple; cursing fig tree', 46, 'Messianic authority'),
(1, 22, 'Parables and Questions', 'Wedding banquet; taxes; resurrection; greatest commandment', 46, 'Kingdom invitation'),
(1, 23, 'Woes to Pharisees', 'Seven woes pronounced on religious leaders', 39, 'True vs false religion'),
(1, 24, 'End Times Discourse', 'Signs of the end; be ready; faithful servant', 51, 'Watchfulness'),
(1, 25, 'Parables of Readiness', 'Ten virgins; talents; sheep and goats judgment', 46, 'Preparation'),
(1, 26, 'Passion Narrative Begins', 'Anointing; Last Supper; Gethsemane; arrest; trials', 75, 'Suffering begins'),
(1, 27, 'Crucifixion', 'Trial before Pilate; crucifixion; death; burial', 66, 'Sacrifice complete'),
(1, 28, 'The Resurrection', 'Empty tomb; Jesus appears; Great Commission', 20, 'Victory and mission');

-- Mark chapters (16 chapters)
INSERT INTO gospel_chapters (gospel_id, chapter_number, title, summary, verse_count, theme) VALUES
(2, 1, 'John the Baptist and Jesus'' Calling', 'John prepares the way; Jesus baptized; calls first disciples', 45, 'Urgent mission'),
(2, 2, 'Authority Over Sin and Sabbath', 'Healing paralytic; calling Levi; fasting questions; Sabbath Lord', 28, 'Jesus'' authority'),
(2, 3, 'Appointing the Twelve', 'Crowds follow; twelve appointed; Beelzebul accusation', 35, 'Opposition rises'),
(2, 4, 'Parables by the Sea', 'Sower; lamp; growing seed; mustard seed; calming storm', 41, 'Kingdom growth'),
(2, 5, 'Demons and Death Defeated', 'Legion demon cast out; raising Jairus'' daughter', 43, 'Power over evil'),
(2, 6, 'Rejection and Mission', 'Rejected at Nazareth; twelve sent out; John beheaded; 5000 fed', 56, 'Ministry expansion'),
(2, 7, 'Clean and Unclean', 'Traditions of elders; what defiles; Syrophoenician woman', 37, 'Heart matters'),
(2, 8, 'Feeding, Healing, Confession', 'Feeds 4000; Pharisees seek sign; Peter''s confession', 38, 'Understanding grows'),
(2, 9, 'Transfiguration and Teaching', 'Transfigured; demon-possessed boy healed; greatness teaching', 50, 'Glory and service'),
(2, 10, 'Marriage, Children, Riches', 'Divorce teaching; blessing children; rich man; cost of discipleship', 52, 'Kingdom values'),
(2, 11, 'Triumphal Entry and Temple', 'Entry; temple cleansed; fig tree cursed; authority questioned', 33, 'Messianic claims'),
(2, 12, 'Controversies and Teaching', 'Tenants parable; taxes; resurrection; greatest commandment; widow''s offering', 44, 'Truth revealed'),
(2, 13, 'Olivet Discourse', 'Temple destroyed; signs of end; be watchful', 37, 'End times'),
(2, 14, 'Anointing and Betrayal', 'Anointed; Last Supper; Gethsemane; arrest; Peter''s denial', 72, 'Faithful to death'),
(2, 15, 'Trial and Crucifixion', 'Before Pilate; mocked; crucified; death; burial', 47, 'Suffering servant'),
(2, 16, 'The Resurrection', 'Empty tomb; appearances; commission; ascension', 20, 'Risen Lord');

-- Luke chapters (24 chapters)
INSERT INTO gospel_chapters (gospel_id, chapter_number, title, summary, verse_count, theme) VALUES
(3, 1, 'Announcements of Births', 'Gabriel announces John''s and Jesus'' births; Mary visits Elizabeth', 80, 'God''s faithfulness'),
(3, 2, 'The Birth of Jesus', 'Census; Jesus born; shepherds visit; presentation; boy Jesus at temple', 52, 'Savior is born'),
(3, 3, 'John''s Ministry Begins', 'John baptizes; Jesus'' baptism; genealogy of Jesus', 38, 'Prepare the way'),
(3, 4, 'Temptation and Rejection', 'Jesus tempted; rejected at Nazareth; demons cast out', 44, 'Ministry begins'),
(3, 5, 'Calling and Healing', 'Miraculous catch; leper cleansed; paralytic healed; Levi called', 39, 'Compassionate healer'),
(3, 6, 'Sabbath Lord and Twelve Chosen', 'Sabbath controversies; twelve chosen; Sermon on Plain', 49, 'Love your enemies'),
(3, 7, 'Faith Examples', 'Centurion''s faith; widow''s son raised; John''s question; sinful woman', 50, 'Great faith'),
(3, 8, 'Parables and Power', 'Sower parable; storm calmed; Legion; Jairus'' daughter', 56, 'Word and power'),
(3, 9, 'Mission and Transfiguration', 'Twelve sent; 5000 fed; Peter''s confession; transfiguration; demon cast out', 62, 'Divine revelation'),
(3, 10, 'Seventy-Two Sent', 'Seventy-two sent; Good Samaritan; Mary and Martha', 42, 'Love and worship'),
(3, 11, 'Prayer and Opposition', 'Lord''s Prayer; persistence; Beelzebul; woes to Pharisees', 54, 'Pray always'),
(3, 12, 'Warnings and Parables', 'Rich fool; do not worry; be ready; division', 59, 'Eternal perspective'),
(3, 13, 'Repentance and Healing', 'Repent or perish; healing on Sabbath; mustard seed; narrow door', 35, 'Enter the kingdom'),
(3, 14, 'Humility and Cost', 'Healing; banquet parable; cost of discipleship', 35, 'Count the cost'),
(3, 15, 'Lost and Found', 'Lost sheep; lost coin; prodigal son', 32, 'God seeks lost'),
(3, 16, 'Wealth and Eternity', 'Shrewd manager; rich man and Lazarus', 31, 'Eternal riches'),
(3, 17, 'Faith and Gratitude', 'Forgiveness; faith; ten lepers; coming kingdom', 37, 'Grateful faith'),
(3, 18, 'Prayer and Humility', 'Persistent widow; Pharisee and tax collector; children; rich ruler', 43, 'Humble prayer'),
(3, 19, 'Zacchaeus and Entry', 'Zacchaeus; ten minas; triumphal entry; temple cleansed', 48, 'Salvation comes'),
(3, 20, 'Authority Questioned', 'Authority; tenants; taxes; resurrection; Christ''s son', 47, 'True authority'),
(3, 21, 'End Times Teaching', 'Widow''s offering; temple destroyed; signs; be ready', 38, 'Watch and pray'),
(3, 22, 'Last Supper and Arrest', 'Passover; Last Supper; Gethsemane; arrest; Peter''s denial; trial', 71, 'New covenant'),
(3, 23, 'Crucifixion', 'Before Pilate and Herod; crucified; death; burial', 56, 'Innocent sacrifice'),
(3, 24, 'Resurrection and Ascension', 'Empty tomb; Emmaus road; appearances; ascension', 53, 'He is risen');

-- John chapters (21 chapters)
INSERT INTO gospel_chapters (gospel_id, chapter_number, title, summary, verse_count, theme) VALUES
(4, 1, 'The Word Became Flesh', 'In the beginning was the Word; John the Baptist testifies; first disciples', 51, 'Divine Word'),
(4, 2, 'First Sign at Cana', 'Water to wine; cleansing the temple', 25, 'Signs begin'),
(4, 3, 'Nicodemus and New Birth', 'You must be born again; God so loved the world', 36, 'Eternal life'),
(4, 4, 'Woman at the Well', 'Living water; true worshipers; official''s son healed', 54, 'True worship'),
(4, 5, 'Healing at Bethesda', 'Invalid healed; Jesus'' authority; witnesses to Jesus', 47, 'Life and judgment'),
(4, 6, 'Bread of Life', 'Feeding 5000; walking on water; I am the bread of life', 71, 'Bread from heaven'),
(4, 7, 'Feast of Tabernacles', 'Jesus teaches at feast; division; rivers of living water', 53, 'Living water'),
(4, 8, 'Light of the World', 'Woman caught in adultery; I am the light; truth sets free; before Abraham', 59, 'Truth and freedom'),
(4, 9, 'Man Born Blind', 'Blind man healed; Pharisees investigate; spiritual blindness', 41, 'Sight to blind'),
(4, 10, 'The Good Shepherd', 'I am the good shepherd; I and the Father are one', 42, 'Shepherd and sheep'),
(4, 11, 'Raising of Lazarus', 'Lazarus dies; Jesus raises him; plot to kill Jesus', 57, 'Resurrection and life'),
(4, 12, 'Anointed for Burial', 'Mary anoints Jesus; triumphal entry; Greeks seek Jesus; belief and unbelief', 50, 'Hour has come'),
(4, 13, 'Washing Feet', 'Jesus washes disciples'' feet; predicts betrayal; new commandment', 38, 'Servant love'),
(4, 14, 'The Way, Truth, Life', 'I am the way; peace I leave you; the Father and Son', 31, 'Peace and promise'),
(4, 15, 'The True Vine', 'I am the vine; abide in me; love one another; world''s hatred', 27, 'Abide and bear fruit'),
(4, 16, 'The Spirit''s Work', 'Persecution; Holy Spirit will come; sorrow to joy; I have overcome', 33, 'Spirit of truth'),
(4, 17, 'Jesus'' High Priestly Prayer', 'Jesus prays for himself, disciples, and all believers', 26, 'Unity and glory'),
(4, 18, 'Arrest and Trials', 'Betrayal; arrest; trials before Annas, Caiaphas, Pilate; Peter''s denial', 40, 'Truth on trial'),
(4, 19, 'Crucifixion', 'Flogged; crucified; It is finished; burial', 42, 'Finished work'),
(4, 20, 'Resurrection Appearances', 'Empty tomb; Mary; disciples; Thomas; purpose statement', 31, 'Believe and live'),
(4, 21, 'Breakfast by the Sea', 'Miraculous catch; Jesus and Peter; feed my sheep', 25, 'Restoration and mission');

-- =====================================================================
-- PART 3: POPULATE SAMPLE GOSPEL VERSES
-- =====================================================================

-- First, we need to get the chapter IDs. Since we just inserted them,
-- we'll use a DO block to insert verses with the correct chapter_id

DO $$
DECLARE
    matthew3_id UUID;
    john3_id UUID;
    john14_id UUID;
    matthew5_id UUID;
    matthew6_id UUID;
    matthew11_id UUID;
    philippians4_id UUID;  -- Note: Philippians is not a Gospel, we'll use Luke instead
    luke6_id UUID;
    colossians3_id UUID;  -- Note: Colossians is not a Gospel, we'll use John instead
    john13_id UUID;
BEGIN
    -- Get chapter IDs
    SELECT id INTO matthew3_id FROM gospel_chapters WHERE gospel_id = 1 AND chapter_number = 3;
    SELECT id INTO john3_id FROM gospel_chapters WHERE gospel_id = 4 AND chapter_number = 3;
    SELECT id INTO john14_id FROM gospel_chapters WHERE gospel_id = 4 AND chapter_number = 14;
    SELECT id INTO matthew5_id FROM gospel_chapters WHERE gospel_id = 1 AND chapter_number = 5;
    SELECT id INTO matthew6_id FROM gospel_chapters WHERE gospel_id = 1 AND chapter_number = 6;
    SELECT id INTO matthew11_id FROM gospel_chapters WHERE gospel_id = 1 AND chapter_number = 11;
    SELECT id INTO luke6_id FROM gospel_chapters WHERE gospel_id = 3 AND chapter_number = 6;
    SELECT id INTO john13_id FROM gospel_chapters WHERE gospel_id = 4 AND chapter_number = 13;

    -- Insert famous Gospel verses

    -- John 3:16-17 (Most famous verse)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (4, john3_id, 16, 'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.', 'John 3:16', 'NIV',
     ARRAY['Love', 'Salvation', 'Eternal Life', 'Faith'],
     ARRAY['God', 'loved', 'world', 'Son', 'believes', 'eternal life']),

    (4, john3_id, 17, 'For God did not send his Son into the world to condemn the world, but to save the world through him.', 'John 3:17', 'NIV',
     ARRAY['Salvation', 'Grace', 'Mission'],
     ARRAY['God', 'Son', 'world', 'condemn', 'save']);

    -- John 14:6 (I am the way)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (4, john14_id, 6, 'Jesus answered, "I am the way and the truth and the life. No one comes to the Father except through me."', 'John 14:6', 'NIV',
     ARRAY['Truth', 'Salvation', 'Exclusivity'],
     ARRAY['Jesus', 'way', 'truth', 'life', 'Father']);

    -- Matthew 5:14-16 (Light of the world)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (1, matthew5_id, 14, 'You are the light of the world. A town built on a hill cannot be hidden.', 'Matthew 5:14', 'NIV',
     ARRAY['Mission', 'Witness', 'Identity'],
     ARRAY['light', 'world', 'city', 'hill', 'hidden']),

    (1, matthew5_id, 15, 'Neither do people light a lamp and put it under a bowl. Instead they put it on its stand, and it gives light to everyone in the house.', 'Matthew 5:15', 'NIV',
     ARRAY['Witness', 'Purpose'],
     ARRAY['lamp', 'light', 'bowl', 'stand']),

    (1, matthew5_id, 16, 'In the same way, let your light shine before others, that they may see your good deeds and glorify your Father in heaven.', 'Matthew 5:16', 'NIV',
     ARRAY['Witness', 'Good Works', 'Glory to God'],
     ARRAY['light', 'shine', 'good deeds', 'glorify', 'Father', 'heaven']);

    -- Matthew 6:33 (Seek first the kingdom)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (1, matthew6_id, 33, 'But seek first his kingdom and his righteousness, and all these things will be given to you as well.', 'Matthew 6:33', 'NIV',
     ARRAY['Kingdom', 'Priorities', 'Provision'],
     ARRAY['seek', 'kingdom', 'righteousness', 'given']);

    -- Matthew 11:28-30 (Come to me)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (1, matthew11_id, 28, 'Come to me, all you who are weary and burdened, and I will give you rest.', 'Matthew 11:28', 'NIV',
     ARRAY['Rest', 'Peace', 'Invitation'],
     ARRAY['come', 'weary', 'burdened', 'rest']),

    (1, matthew11_id, 29, 'Take my yoke upon you and learn from me, for I am gentle and humble in heart, and you will find rest for your souls.', 'Matthew 11:29', 'NIV',
     ARRAY['Rest', 'Humility', 'Discipleship'],
     ARRAY['yoke', 'learn', 'gentle', 'humble', 'rest', 'souls']),

    (1, matthew11_id, 30, 'For my yoke is easy and my burden is light.', 'Matthew 11:30', 'NIV',
     ARRAY['Rest', 'Grace'],
     ARRAY['yoke', 'easy', 'burden', 'light']);

    -- Luke 6:27-31 (Love your enemies)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (3, luke6_id, 27, 'But to you who are listening I say: Love your enemies, do good to those who hate you,', 'Luke 6:27', 'NIV',
     ARRAY['Love', 'Enemies', 'Grace'],
     ARRAY['love', 'enemies', 'good', 'hate']),

    (3, luke6_id, 28, 'bless those who curse you, pray for those who mistreat you.', 'Luke 6:28', 'NIV',
     ARRAY['Forgiveness', 'Prayer', 'Blessing'],
     ARRAY['bless', 'curse', 'pray', 'mistreat']),

    (3, luke6_id, 31, 'Do to others as you would have them do to you.', 'Luke 6:31', 'NIV',
     ARRAY['Golden Rule', 'Love', 'Ethics'],
     ARRAY['do', 'others', 'golden rule']);

    -- John 13:34-35 (New commandment)
    INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords)
    VALUES
    (4, john13_id, 34, 'A new command I give you: Love one another. As I have loved you, so you must love one another.', 'John 13:34', 'NIV',
     ARRAY['Love', 'Commandment', 'Discipleship'],
     ARRAY['command', 'love', 'one another']),

    (4, john13_id, 35, 'By this everyone will know that you are my disciples, if you love one another.', 'John 13:35', 'NIV',
     ARRAY['Love', 'Witness', 'Identity'],
     ARRAY['know', 'disciples', 'love']);

    RAISE NOTICE 'Sample Gospel verses inserted successfully!';
END $$;

-- =====================================================================
-- PART 4: POPULATE GOSPEL SCENARIOS
-- =====================================================================

DO $$
DECLARE
    matthew_id INTEGER := 1;
    luke_id INTEGER := 3;
    john_id INTEGER := 4;
BEGIN
    INSERT INTO gospel_scenarios (title, description, category, gospel_id, verse_reference, heart_response, gospel_response, gospel_wisdom, action_steps, tags, difficulty_level)
    VALUES
    (
        'Career Decision: Choosing Between Money and Purpose',
        'You have two job offers: one pays significantly more but feels empty, the other pays less but aligns with your values and passion.',
        'Career & Purpose',
        matthew_id,
        'Matthew 6:33',
        'Take the higher-paying job. Financial security is important, and you can find purpose outside of work. The money will give you options and stability.',
        'Choose the job that aligns with your calling. Work is not just about money—it''s about serving others and using your gifts. True fulfillment comes from living with purpose.',
        'Jesus teaches us to seek first the Kingdom of God and His righteousness. Material wealth is temporary, but living according to your calling brings lasting fulfillment. Consider which path allows you to better serve others and grow spiritually.',
        ARRAY[
            'Pray for wisdom and clarity about your calling',
            'Consider which role allows you to better serve others',
            'Reflect on your long-term vision for your life',
            'Seek counsel from trusted mentors'
        ],
        ARRAY['career', 'purpose', 'money', 'calling', 'wisdom'],
        'Medium'
    ),

    (
        'Forgiveness: Should I Reconcile with Someone Who Hurt Me?',
        'A family member or friend has deeply hurt you. They''ve apologized, but the pain is still fresh. Should you forgive and reconcile?',
        'Forgiveness & Relationships',
        luke_id,
        'Luke 6:37',
        'It''s too soon. You need more time to heal. They don''t deserve forgiveness yet, and maintaining distance protects you from further hurt.',
        'Choose forgiveness, not for them, but for your own peace. Holding onto bitterness only hurts you. Reconciliation may take time, but forgiveness can begin now.',
        'Jesus teaches radical forgiveness—not because others deserve it, but because we have been forgiven. Forgiveness frees your heart from bitterness and opens the door to healing and restoration.',
        ARRAY[
            'Acknowledge your pain and bring it to God in prayer',
            'Choose to forgive, even if reconciliation takes time',
            'Set healthy boundaries while keeping your heart open',
            'Seek pastoral counsel if needed'
        ],
        ARRAY['forgiveness', 'relationships', 'healing', 'family', 'hurt'],
        'Hard'
    ),

    (
        'Anxiety: Worrying About the Future',
        'You''re consumed by worry about the future—finances, health, relationships. The uncertainty feels overwhelming.',
        'Peace & Trust',
        matthew_id,
        'Matthew 6:25-34',
        'These worries are valid. You need to plan and prepare for every possible outcome. Staying vigilant keeps you safe.',
        'Trust God with your future. Worrying doesn''t add a single hour to your life. Do what you can today, and surrender the rest to God.',
        'Jesus calls us to trust in God''s provision and care. Anxiety steals our peace and prevents us from experiencing God''s presence today. Cast your worries on Him, for He cares deeply for you.',
        ARRAY[
            'Write down your worries and bring them to God in prayer',
            'Practice gratitude for God''s provision today',
            'Take one small step forward instead of trying to solve everything',
            'Meditate on Scripture about God''s faithfulness'
        ],
        ARRAY['anxiety', 'worry', 'peace', 'trust', 'fear'],
        'Medium'
    ),

    (
        'Workplace Conflict: Dealing with a Difficult Colleague',
        'A coworker consistently takes credit for your work and undermines you in meetings. You''re frustrated and considering confrontation.',
        'Work & Integrity',
        matthew_id,
        'Matthew 18:15',
        'Confront them publicly in the next meeting. Show everyone what they''re doing. They need to be exposed and held accountable.',
        'Address it privately with grace and honesty. Seek to understand their perspective while standing firm in truth. Let your work speak for itself.',
        'Jesus teaches us to resolve conflicts with humility and love. Confrontation can be necessary, but it should be done with the goal of restoration, not revenge. Trust that God sees your work and will vindicate you in His timing.',
        ARRAY[
            'Pray for wisdom and a humble heart',
            'Document your contributions calmly and factually',
            'Have a private conversation with grace and honesty',
            'Involve leadership only if necessary'
        ],
        ARRAY['workplace', 'conflict', 'integrity', 'humility', 'justice'],
        'Medium'
    ),

    (
        'Service: Should I Give to Someone Who Might Misuse It?',
        'A homeless person asks for money. You suspect they might use it for drugs or alcohol. Should you still give?',
        'Generosity & Compassion',
        matthew_id,
        'Matthew 5:42',
        'Don''t give cash—they''ll just waste it. If you want to help, buy them food or direct them to a shelter.',
        'Give with compassion, trusting God with the outcome. Your responsibility is to respond with love; what they do with it is between them and God.',
        'Jesus calls us to give generously without judgment. While wisdom is important, love compels us to see the person''s dignity first. Give as you feel led, whether it''s money, food, or time—and trust God with the rest.',
        ARRAY[
            'See the person as God sees them—loved and valuable',
            'Give as you feel led, trusting God with the outcome',
            'Consider alternative ways to help if you''re uncomfortable with cash',
            'Engage with them as a person, not just a need'
        ],
        ARRAY['generosity', 'compassion', 'service', 'homelessness', 'giving'],
        'Easy'
    ),

    (
        'Love vs Fear: Reaching Out to Someone Different',
        'You want to build a friendship with someone from a very different background or belief system, but you''re afraid of what others might think or how it might affect you.',
        'Love & Courage',
        john_id,
        'John 13:34-35',
        'Stay within your comfort zone. You have enough friends, and crossing cultural or ideological lines might complicate your life or damage your reputation.',
        'Love boldly. Jesus crossed every barrier to reach people. Your calling is to love like He did, regardless of what others think. Authentic relationships transform both parties.',
        'Jesus'' love knew no boundaries. He ate with tax collectors, touched lepers, and spoke to Samaritans. Our love should reflect His—fearless, genuine, and transformative. Love breaks down walls and builds bridges.',
        ARRAY[
            'Pray for courage and genuine love',
            'Take a small step: invite them for coffee or a meal',
            'Listen more than you speak; seek to understand their story',
            'Trust that God''s love working through you can change hearts'
        ],
        ARRAY['love', 'courage', 'friendship', 'diversity', 'witness'],
        'Medium'
    );

    RAISE NOTICE 'Gospel scenarios inserted successfully!';
END $$;

-- =====================================================================
-- PART 5: REFRESH MATERIALIZED VIEWS
-- =====================================================================

REFRESH MATERIALIZED VIEW gospel_summary;
REFRESH MATERIALIZED VIEW gospel_chapter_summary;

-- =====================================================================
-- PART 6: VERIFY DATA
-- =====================================================================

DO $$
DECLARE
    gospel_count INTEGER;
    chapter_count INTEGER;
    verse_count INTEGER;
    scenario_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO gospel_count FROM gospels;
    SELECT COUNT(*) INTO chapter_count FROM gospel_chapters;
    SELECT COUNT(*) INTO verse_count FROM gospel_verses;
    SELECT COUNT(*) INTO scenario_count FROM gospel_scenarios;

    RAISE NOTICE '========================================';
    RAISE NOTICE 'DATABASE POPULATION COMPLETE!';
    RAISE NOTICE '========================================';
    RAISE NOTICE 'Gospels: %', gospel_count;
    RAISE NOTICE 'Chapters: %', chapter_count;
    RAISE NOTICE 'Verses: %', verse_count;
    RAISE NOTICE 'Scenarios: %', scenario_count;
    RAISE NOTICE '========================================';

    ASSERT gospel_count = 4, 'Expected 4 gospels';
    ASSERT chapter_count = 89, 'Expected 89 chapters';
    ASSERT verse_count >= 15, 'Expected at least 15 sample verses';
    ASSERT scenario_count >= 6, 'Expected at least 6 scenarios';

    RAISE NOTICE 'All validations passed!';
    RAISE NOTICE 'Your GospelWisdom database is ready!';
END $$;
