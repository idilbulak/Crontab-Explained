# Weekly Tasks in Crontab

Scheduling weekly tasks in crontab is straightforward. Here's how you can do it:

## 1. Run a script every Monday at 9:00 AM:

0 9 * * 1 /path/to/script.sh

## 2. Send a report every Friday at 6:00 PM:

0 18 * * 5 /usr/bin/send-report

## 3. Reboot the system every Sunday at midnight:

0 0 * * 7 /usr/bin/reboot

Tip: Day 0 and 7 both represent Sunday in crontab.
