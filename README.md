# Crontab Usage Guide

This guide aims to provide comprehensive information on the Linux `crontab` command, from its basic usage to advanced techniques.

## Table of Contents

1. [What is it?](#what-is-it)
2. [Crontab Syntax](#crontab-syntax)
2. [Basic Commands](#basic-commands)
3. [Sample Schedules](#sample-schedules)
4. [Advanced Techniques](#advanced-techniques)

## What is it?

`crontab` (cron table) is a program in Unix-based operating systems that allows for time-based jobs to be automatically executed. It's processed by a daemon called `cron`.

## Crontab Syntax

Understanding the `crontab` syntax is crucial for scheduling tasks correctly. The syntax consists of five time and date fields, followed by a command to be executed.

[Learn more about crontab syntax.](documentation/syntax.md)

## Basic Commands

- `crontab -e`: Used to edit the crontab file.
- `crontab -l`: Used to list current crontab tasks.
- `crontab -r`: Used to remove the crontab file.

[Click here for more information.](documentation/commands.md)

## Sample Schedules

- A task to run every day at 12:00 PM:
0 12 * * * 

- A task to run every Monday:
0 0 * * 1 /path/to/command.sh

[Click here for more examples.](examples/)

## Advanced Techniques

- Using environment variables within `crontab`
- Logging and debugging
- Common mistakes and their solutions

[Click here to learn advanced techniques.](advanced/)

## Scripts

This repository provides a set of scripts to demonstrate and facilitate various crontab operations.

1. **Setup Cron Jobs Script** ([setup_cron_jobs.sh](scripts/setup_cron_jobs.sh))
   - Configures and installs specific cron jobs to execute provided scripts at predetermined intervals.
   
2. **System Info Script** ([system_info.sh](scripts/system_info.sh))
   - Gathers basic system information like current processes and disk usage, and saves it to a specified output file.
   
3. **Backup Script** ([backup.sh](scripts/backup.sh))
   - Compresses and archives a specified source folder, saving the backup to a designated backup directory.

For detailed scripts and their operations, [click here](scripts/).
