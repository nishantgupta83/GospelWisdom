# GospelWisdom Daily Features Guide

## Overview
Comprehensive feature set inspired by top Bible apps (YouVersion, Manna, Dwell, Pencil Bible).

---

## Feature 1: Daily Verse of the Day 📅

### Database Tables
- `daily_gospel_verse` - Daily verse with devotional content

### Features
- **Daily Refresh**: New verse every day with beautiful imagery
- **Devotional Content**: 5-10 minute reflection on the verse
- **Reflection Prompts**: Questions to apply the teaching
- **Video Teaching**: Optional video content (URL)
- **Sharing**: Share today's verse with friends

### API Functions
```sql
SELECT * FROM get_todays_verse();
```

### App Implementation
- Home screen shows today's verse on app open
- Push notification for morning devotional
- Widget support for lock screen/home screen
- Share button to social media

---

## Feature 2: Audio Bible / Read-Aloud 🔊

### Database Tables
- `gospel_audio_chapters` - Audio files for each chapter
- `user_audio_playback` - Playback position tracking

### Features
- **Chapter Audio**: Professional narration of Gospel chapters
- **Background Playback**: Listen while using other apps
- **Offline Downloads**: Download chapters for offline listening
- **Playback Control**: Play, pause, skip, speed control (0.75x - 2x)
- **Resume Progress**: Picks up where you left off
- **Multiple Narrators**: Different voice options

### Audio Sources
- Text-to-speech (initial MVP)
- Professional recordings (future)
- Multiple translations (NIV, KJV, ESV)

### App Implementation
- Audio player UI with controls
- Chapter list with download indicators
- Background audio service
- CarPlay / Android Auto support

---

## Feature 5: Highlights, Notes & Journaling ✍️

### Database Tables
- `user_highlights` - Color-coded verse highlighting
- `user_notes` - Personal notes on verses/scenarios
- `spiritual_journal` - Daily journal entries
- `prayer_list` - Prayer requests and answered prayers

### Highlighting
**Colors Available:**
- Yellow (default)
- Blue (understanding)
- Green (application)
- Red (important)
- Purple (promise)

**Usage:**
- Tap and hold verse to highlight
- Tap highlight to change color
- View all highlights in collection

### Notes
**Note Types:**
- Verse notes
- Chapter notes
- Scenario notes
- General notes

**Features:**
- Rich text formatting
- Tag system for organization
- Search within notes
- Private by default

### Spiritual Journal
**Daily Entries Include:**
- Date and title
- Mood tracking (grateful, peaceful, struggling, joyful)
- Journal content
- Related verses/scenarios
- Prayer requests
- Answered prayers
- Tags for categorization

**Usage:**
- Morning/evening reflection
- Track spiritual growth
- Prayer journal
- Gratitude log

### Prayer List
**Categories:**
- Personal
- Family
- Friends
- Church
- World

**Status Tracking:**
- Active prayers
- Answered prayers
- Archived prayers

**Features:**
- Mark prayers as answered with date
- Add notes on how God answered
- Urgent prayer flagging
- Share prayer requests (optional)

---

## Feature 6: AI-Powered Personalization 🤖

### Database Tables
- `user_preferences` - User settings and interests
- `user_reading_history` - Tracking what users read
- `personalized_recommendations` - AI-generated suggestions
- `user_mood_tracking` - Mood-based verse recommendations
- `user_streaks` - Reading streaks and achievements
- `user_achievements` - Badges and milestones

### Personalization Features

#### Mood-Based Verses
**Moods Supported:**
- Anxious / Worried / Fearful → Peace verses
- Sad / Depressed / Lonely → Hope & Love verses
- Grateful / Joyful / Blessed → Gratitude verses
- Angry / Frustrated → Peace & Forgiveness verses

**Usage:**
```sql
SELECT * FROM get_mood_based_verses(user_id, 'anxious', 5);
```

#### Daily Personalized Content
**Recommendations Include:**
- Daily verse tailored to user interests
- Scenarios based on reading history
- Reading plans matching preferences
- Devotionals aligned with current mood

**API:**
```sql
SELECT * FROM get_personalized_daily_content(user_id);
```

#### Reading Streaks
**Tracking:**
- Current streak (consecutive days)
- Longest streak ever
- Total days read

**Updates Automatically:**
```sql
SELECT update_reading_streak(user_id);
```

#### Achievements & Badges
**Milestone Badges:**
- First verse read
- 7-day streak
- 30-day streak
- 100-day streak
- 1 year streak
- 100 verses read
- 1000 verses read
- Complete a Gospel
- Complete all 4 Gospels

**Display:**
- Badge collection screen
- Progress indicators
- Share achievements

### AI/ML Integration (Future)

**Phase 1 (Current): Rule-Based**
- Mood → Theme mapping
- Category preferences
- Simple recommendations

**Phase 2 (Future): ML-Powered**
- Collaborative filtering (users like you also read...)
- NLP for content understanding
- Engagement prediction
- Optimal notification timing
- Reading difficulty matching

---

## Implementation Checklist

### Backend (Supabase)
- [x] Database schema created
- [x] RPC functions implemented
- [x] RLS policies configured
- [ ] Sample data populated
- [ ] API endpoints tested

### Frontend (Flutter)
- [ ] Daily verse widget
- [ ] Audio player service
- [ ] Highlights UI
- [ ] Notes & journal screens
- [ ] Prayer list UI
- [ ] Streak tracker widget
- [ ] Achievement system
- [ ] Mood-based recommendations

### Services
- [ ] Audio service (background playback)
- [ ] Download manager (offline audio)
- [ ] Sync service (notes, highlights)
- [ ] Notification service (daily reminders)
- [ ] Analytics (reading tracking)

---

## User Flows

### Morning Routine
1. User opens app
2. See Daily Verse with beautiful image
3. Read devotional (5-10 min)
4. Answer reflection question in journal
5. Update prayer list
6. Streak updated automatically
7. Get achievement if milestone reached

### Evening Reflection
1. Open journal
2. Record mood and day's reflection
3. Link to verses that spoke today
4. Review prayer list
5. Mark answered prayers
6. Highlight favorite verse from today

### Audio Listening
1. Navigate to Gospel chapter
2. Tap audio icon
3. Audio plays in background
4. Continue using other apps
5. Position saved automatically
6. Resume next time

---

## Analytics to Track

### Engagement Metrics
- Daily active users
- Streak retention (% maintaining streaks)
- Feature usage (audio, notes, journal)
- Content completion rates
- Sharing frequency

### Personalization Metrics
- Recommendation accuracy
- Click-through rates
- Mood tracking usage
- Achievement completion

### Content Metrics
- Most popular verses
- Most highlighted verses
- Most saved scenarios
- Average session duration

---

## Next Steps

1. **Populate Sample Data**
   - 30 days of daily verses
   - Audio files for Matthew 1-5
   - Sample journal entries

2. **Flutter Integration**
   - Home screen with daily verse
   - Audio player component
   - Notes & highlights UI

3. **Testing**
   - Unit tests for recommendations
   - Integration tests for streaks
   - User testing for UI/UX

4. **Launch**
   - Beta test with small group
   - Iterate based on feedback
   - Full release
