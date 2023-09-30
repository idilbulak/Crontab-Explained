# Environment Variables in Crontab

Crontab jobs often require specific environment settings. This guide explains how to set and use environment variables in crontab.

## Setting Environment Variables

You can set environment variables at the top of the crontab file:

MAILTO="admin@example.com"
PATH=/usr/bin:/bin:/usr/local/bin

## Using Environment Variables in Jobs

Use environment variables in your cron jobs just like in any other shell script:

echo $PATH > /tmp/path.txt

## Commonly Used Variables

- **MAILTO:** Defines the email address to send job outputs. If set to an empty string (`MAILTO=""`), no email will be sent.
- **PATH:** Defines the command search path.
- **HOME:** Defines the home directory, useful for user-specific cron jobs.

Tip: Always ensure that the `PATH` variable is set correctly, especially if your scripts rely on commands from non-standard directories.
