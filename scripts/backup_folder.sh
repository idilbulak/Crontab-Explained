#!/bin/bash

# Define the source folder to be backed up
SOURCE_FOLDER="/path/to/source_folder"

# Define the directory where the backup should be saved
BACKUP_DIR="/path/to/backup_directory"

# Construct a unique backup filename based on the current date and time
BACKUP_NAME="backup_$(date +\%Y\%m\%d\%H\%M\%S).tar.gz"

# Use the tar command to compress and archive the source folder into the backup directory with the unique filename
tar -czf $BACKUP_DIR/$BACKUP_NAME $SOURCE_FOLDER

# Inform the user that the backup has been taken and specify its location
echo "Backup taken and saved to $BACKUP_DIR/$BACKUP_NAME"
