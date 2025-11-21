# Start Gospel Verses Fetch in Background (nohup)

## Quick Start Command

```bash
cd /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts && nohup python3 fetch_gospel_verses_incremental.py > fetch_log.txt 2>&1 &
```

## What This Does

- **cd**: Changes to scripts directory
- **nohup**: Runs process even after closing terminal ("no hangup")
- **python3 fetch_gospel_verses_incremental.py**: Runs the fetching script
- **> fetch_log.txt**: Saves all output to log file
- **2>&1**: Redirects errors to the same log file
- **&**: Runs in background

## Monitor Progress

### Check if process is running:
```bash
ps aux | grep fetch_gospel_verses
```

### Watch log file in real-time:
```bash
tail -f /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts/fetch_log.txt
```

### Check last 50 lines of log:
```bash
tail -50 /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts/fetch_log.txt
```

### Check progress file:
```bash
cat /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts/.fetch_progress.json
```

## Stop the Process (if needed)

### Find process ID:
```bash
ps aux | grep fetch_gospel_verses | grep -v grep
```

### Kill the process:
```bash
kill <PID>
# Example: kill 12345
```

## Expected Timeline

- **Matthew**: ~60 minutes (28 chapters, 1,071 verses)
- **Mark**: ~35 minutes (16 chapters, 678 verses)
- **Luke**: ~63 minutes (24 chapters, 1,151 verses)
- **John**: ~48 minutes (21 chapters, 879 verses)
- **Total**: ~3.4 hours (206 minutes)

## Check Completion

### When finished, you should see:
```bash
tail -20 fetch_log.txt
```

Output should show:
```
✅ SQL saved to: .../2025_11_20_john_verses.sql

📊 Progress Summary:
   ✅ Completed: 89/89 chapters
   ❌ Failed: 0 chapters
```

## Output Files

Verses will be saved to:
```
/Users/nishantgupta/Documents/nishant_projects/GospelWisdom/supabase/migrations/verses/
├── 2025_11_20_matthew_verses.sql
├── 2025_11_20_mark_verses.sql
├── 2025_11_20_luke_verses.sql
└── 2025_11_20_john_verses.sql
```

## Troubleshooting

### If process stops due to rate limiting:
```bash
# Check last error in log
tail -50 fetch_log.txt | grep -A5 "Failed"

# Resume fetching (script will skip already-fetched chapters)
cd /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts
nohup python3 fetch_gospel_verses_incremental.py >> fetch_log.txt 2>&1 &
```

### If you want to increase rate limiting pause:
Edit the script and change:
```python
time.sleep(2)  # Change to time.sleep(5) for slower but safer fetching
```

## Alternative: Run in Screen Session

If you prefer to keep terminal attached:

```bash
# Start screen session
screen -S gospel_fetch

# Run fetch command
cd /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts
python3 fetch_gospel_verses_incremental.py

# Detach from screen: Press Ctrl+A, then D

# Re-attach later
screen -r gospel_fetch
```

## Post-Fetch Next Steps

1. **Check all SQL files were generated**:
   ```bash
   ls -lh /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/supabase/migrations/verses/
   ```

2. **Count total verses in SQL files**:
   ```bash
   grep -c "INSERT INTO gospel_verses" /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/supabase/migrations/verses/*.sql
   ```

3. **Run validation** (recommended before database population):
   ```bash
   cd /Users/nishantgupta/Documents/nishant_projects/GospelWisdom/scripts
   python3 validate_gospel_verses.py Matthew 1
   python3 validate_gospel_verses.py John 3
   # etc...
   ```

4. **Execute SQL in Supabase**:
   - Open Supabase SQL Editor
   - Copy contents of each SQL file
   - Execute one Gospel at a time
   - Verify verse counts

---

**Ready to start? Run the command at the top of this file! 🚀**
