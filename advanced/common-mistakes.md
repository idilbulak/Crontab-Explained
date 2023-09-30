# Common Mistakes in Crontab

While crontab is powerful, it's easy to make mistakes. Here are some common pitfalls and their solutions:

## 1. Incorrect Path

**Issue:** The command or script doesn't run because the system can't find it.

**Solution:** Set the `PATH` variable correctly at the beginning of your crontab or provide full paths to commands and scripts.

## 2. Missing Execution Permission

**Issue:** Script doesn't run due to lack of execute permissions.

**Solution:** Ensure the script has execute permission using `chmod +x /path/to/script.sh`.

## 3. Ignoring Errors

**Issue:** Job errors are not captured or noticed.

**Solution:** Redirect both standard output and errors to log files, and periodically review these logs.

## 4. Incorrect Syntax

**Issue:** Misunderstanding crontab's time and date fields.

**Solution:** Double-check your time and date fields. Use online cron syntax generators or validators if unsure.

Tip: When in doubt, test your cron job with a near-future time to see if it runs as expected.

