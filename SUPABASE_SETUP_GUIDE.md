# GospelWisdom - Supabase Setup Guide

## Quick Start (5 minutes)

Follow these steps to get your GospelWisdom app running with Supabase:

---

## Step 1: Create Supabase Project

1. Go to https://supabase.com
2. Sign up / Log in
3. Click **"New Project"**
4. Fill in:
   - **Project Name**: `GospelWisdom` (or any name you prefer)
   - **Database Password**: Create a strong password (SAVE THIS!)
   - **Region**: Choose closest to you
   - **Pricing Plan**: Free tier is fine for testing
5. Click **"Create new project"**
6. Wait 2-3 minutes for project to be ready

---

## Step 2: Get Your Supabase Credentials

Once your project is ready:

1. Click on **Settings** (gear icon) in the sidebar
2. Click on **API** under Configuration
3. Copy these TWO values:

   **Project URL** (looks like: `https://xxxxxxxxxxxxx.supabase.co`)

   **anon public** key (looks like: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...`)

4. **SAVE THESE SOMEWHERE SAFE** - you'll need them in Step 4

---

## Step 3: Create Database Schema

1. In your Supabase project, click **SQL Editor** in the sidebar
2. Click **"New Query"**
3. **IMPORTANT**: Run these SQL files in ORDER:

### 3a. Run Main Gospel Schema

Copy the entire contents of this file and paste into the SQL Editor:
```
GospelWisdom/supabase/migrations/100_create_gospelwisdom_schema.sql
```

Click **RUN** button

You should see: ✅ `GospelWisdom schema validation passed successfully!`

### 3b. OPTIONAL: Add Sample Gospel Scenarios (Recommended)

If you want some sample scenarios to test with, run:
```
GospelWisdom/supabase/migrations/101_transform_scenarios_to_gospel.sql
```

### 3c. OPTIONAL: Add Daily Features

For daily verse, journaling, etc:
```
GospelWisdom/supabase/migrations/102_add_daily_features.sql
```

---

## Step 4: Configure Your Flutter App

Now that Supabase is ready, configure your app:

### Option A: Build-time Configuration (Recommended)

Run this command from your project directory:

```bash
flutter build macos --debug \
  --dart-define=SUPABASE_URL=https://YOUR_PROJECT_ID.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=YOUR_ANON_KEY_HERE
```

**Replace:**
- `YOUR_PROJECT_ID` with your actual Supabase project ID
- `YOUR_ANON_KEY_HERE` with your actual anon key from Step 2

### Option B: Create .env File (Alternative)

1. Create a file named `.env` in the project root:

```bash
SUPABASE_URL=https://YOUR_PROJECT_ID.supabase.co
SUPABASE_ANON_KEY=YOUR_ANON_KEY_HERE
```

2. Then build with:
```bash
flutter build macos --debug \
  --dart-define-from-file=.env
```

---

## Step 5: Run the App

```bash
open build/macos/Build/Products/Debug/oldwisdom.app
```

The app should now launch successfully! 🎉

---

## Verify Everything Works

After launching:

1. ✅ App should show splash screen
2. ✅ App should navigate to authentication screen
3. ✅ You can sign in as guest (anonymous)
4. ✅ You should see the main app with Gospel content

---

## Troubleshooting

### Error: "Missing required environment variables"

**Cause**: Supabase credentials not provided at build time

**Fix**: Make sure you're using `--dart-define` flags when building:

```bash
flutter clean
flutter build macos --debug \
  --dart-define=SUPABASE_URL=https://xxxxx.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=eyJhbGci...
```

### Error: "Supabase connection failed"

**Causes**:
1. Wrong URL or key
2. Project not fully initialized
3. Network/firewall issues

**Fix**:
1. Double-check your URL and key from Supabase dashboard
2. Wait 5 minutes after creating project
3. Try from different network

### No Content Showing in App

**Cause**: Database tables are empty

**Fix**: You need to add Gospel content! Options:

**Option 1**: Use the sample data from migration 101
**Option 2**: Manually add Gospel verses via SQL Editor

---

## Adding Gospel Verses (Manual Method)

If you want to manually add verses, here's an example:

```sql
-- 1. First, get a chapter ID
SELECT id, gospel_id, chapter_number
FROM gospel_chapters
WHERE gospel_id = 4 AND chapter_number = 3;  -- John Chapter 3

-- 2. Insert verses (replace CHAPTER_ID_HERE with the UUID from step 1)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code)
VALUES
(4, 'CHAPTER_ID_HERE', 16, 'For God so loved the world that he gave his one and only Son, that whoever believes in him shall not perish but have eternal life.', 'John 3:16', 'NIV'),
(4, 'CHAPTER_ID_HERE', 17, 'For God did not send his Son into the world to condemn the world, but to save the world through him.', 'John 3:17', 'NIV');
```

---

## Database Schema Overview

Your Supabase database has these main tables:

| Table | Purpose |
|-------|---------|
| `gospels` | 4 Gospel books (Matthew, Mark, Luke, John) |
| `gospel_chapters` | Chapters within each Gospel |
| `gospel_verses` | Individual verses with NIV translation |
| `gospel_verse_translations` | Multiple Bible versions (KJV, ESV, etc.) |
| `gospel_scenarios` | Life scenarios with Gospel wisdom |
| `supported_translations` | Bible version metadata |

---

## App-to-Database Mapping

The app expects this data structure:

```dart
// Chapter model (lib/models/chapter.dart)
Chapter {
  chapterId: Integer
  title: String
  subtitle: String?
  summary: String?
  verseCount: Integer
  theme: String?
  keyTeachings: List<String>
}

// Verse model (lib/models/verse.dart)
Verse {
  verseId: Integer
  chapterId: Integer
  description: String  // Full verse text + reference
}

// Scenario model (lib/models/scenario.dart)
Scenario {
  title: String
  description: String
  category: String
  chapter: Integer
  heartResponse: String
  dutyResponse: String
  gospelWisdom: String
  verse: String
  verseNumber: String
  tags: List<String>
  actionSteps: List<String>
}
```

---

## Need More Help?

1. Check Supabase docs: https://supabase.com/docs
2. Check Flutter env variables: https://dart.dev/guides/environment-declarations
3. Check app logs when running

---

## Security Note

⚠️ **NEVER commit your .env file or expose your Supabase keys publicly!**

The `anon` key is safe for client-side use, but keep your `service_role` key secret.

---

## Next Steps

Once your app is working:

1. ✅ Add more Gospel verses to the database
2. ✅ Create custom scenarios
3. ✅ Configure authentication providers (Google, Apple)
4. ✅ Test on iOS/Android devices

Good luck! 🙏
