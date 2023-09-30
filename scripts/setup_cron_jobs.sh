#!/bin/bash

# Determine the directory where the script resides
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create a temporary file to store the current crontab entries
TMP_CRON_FILE="/tmp/my_cron_jobs"

# Output the current crontab to the temporary file
crontab -l > $TMP_CRON_FILE

# Append the daily task to the temporary file (runs 'save_system_info.sh' every midnight)
echo "0 0 * * * $DIR/save_system_info.sh" >> $TMP_CRON_FILE

# Append the weekly task to the temporary file (runs 'backup_folder.sh' every Monday at 2 AM)
echo "0 2 * * 1 $DIR/backup_folder.sh" >> $TMP_CRON_FILE

# Install the new cron jobs from the temporary file
crontab $TMP_CRON_FILE

# Remove the temporary file
rm $TMP_CRON_FILE

# Inform the user that the cron jobs have been added
echo "Cron jobs have been set up!"
