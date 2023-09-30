# Crontab Syntax Guide

The `crontab` utility allows you to schedule tasks in Unix-based systems using a specific syntax. This document provides a brief overview of that syntax.

## Basic Syntax

A crontab file consists of lines of five fields for time followed by a command to be executed:

_ _ _ _ command-to-be-executed
| | | | |
| | | | ----- Day of the week (0 - 7) [Both 0 and 7 represent Sunday]
| | | ------- Month (1 - 12)
| | --------- Day of the month (1 - 31)
| ----------- Hour (0 - 23)
------------- Minute (0 - 59)


Each field can have a single value, multiple values, an asterisk (representing "every" value), or a range.

## Examples

1. Every minute:
    ```
    * * * * * /path/to/script.sh
    ```

2. Every day at 5:30 PM:
    ```
    30 17 * * * /path/to/script.sh
    ```

3. Every Monday at 5:30 PM:
    ```
    30 17 * * 1 /path/to/script.sh
    ```

4. Every five minutes:
    ```
    */5 * * * * /path/to/script.sh
    ```

5. Every last day of the month:
    ```
    59 23 31 * * /path/to/script.sh
    ```

6. Every 10 minutes during the first half hour and every 20 minutes during the second half hour:
    ```
    */10 0-0:30,*/20 0:30-1 * * * /path/to/script.sh
    ```

## Lists and Ranges

- **Lists:** Separate values with commas to specify a list.
    ```
    5,15,25,35 * * * * /path/to/script.sh  # Every 10 minutes starting at 5 past the hour
    ```

- **Ranges:** Use a dash between two numbers.
    ```
    9-17 * * * * /path/to/script.sh  # Every hour from 9 AM to 5 PM
    ```

## Special Strings

Instead of the five time fields, you can use some special strings:

- `@reboot`: Run once at startup
- `@yearly` or `@annually`: Run once a year, i.e., "0 0 1 1 *"
- `@monthly`: Run once a month, i.e., "0 0 1 * *"
- `@weekly`: Run once a week, i.e., "0 0 * * 0"
- `@daily` or `@midnight`: Run once a day, i.e., "0 0 * * *"
- `@hourly`: Run once an hour, i.e., "0 * * * *"

---

Remember, while creating cron jobs, always ensure you have the correct syntax to avoid unexpected behaviors.

---