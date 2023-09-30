# Daily Tasks in Crontab

Using crontab, you can easily schedule daily tasks. Here are some examples of daily tasks and how you can set them up:

## 1. Run a script every day at midnight:

0 0 * * * /path/to/script.sh

## 2. Run a backup command every day at 2:30 AM:

30 2 * * * /usr/bin/backup

## 3. Clean temp directory every day at 11:45 PM:

45 23 * * * rm -rf /tmp/*

Remember, always ensure the paths and commands are correct and test where possible to avoid potential issues.
