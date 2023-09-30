# Complex Tasks in Crontab

For more intricate scheduling needs, crontab offers a versatile syntax. Here are examples of some complex tasks:

## 1. Run a script on the 1st and 15th of every month:

0 0 1,15 * * /path/to/script.sh

## 2. Run a task every 10 minutes during working hours (9 AM to 5 PM):

*/10 9-17 * * * /usr/bin/task

## 3. Send reminders every 30 minutes on weekends:

*/30 * * * 6,7 /usr/bin/send-reminder

## 4. Run a maintenance job on the last day of every month:

59 23 28-31 * * [ "$(date +%m -d tomorrow)" != "$(date +%m -d +2days)" ] && /usr/bin/maintenance-job

This is a more advanced example. The command checks if the next day's month is different from the day after the next day's month, ensuring the script only runs on the last day of the month.

