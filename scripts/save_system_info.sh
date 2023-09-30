#!/bin/bash

# Specify the output file path
OUTPUT_FILE="/tmp/system_info.txt"

# Write the current date and time to the output file
echo "Report Date and Time: $(date)" > $OUTPUT_FILE

# Append the list of running processes to the output file
echo -e "\nRunning Processes:" >> $OUTPUT_FILE
ps aux >> $OUTPUT_FILE

# Append the disk usage information to the output file
echo -e "\nDisk Usage:" >> $OUTPUT_FILE
df -h >> $OUTPUT_FILE

# Inform the user where the system information has been saved
echo "System info saved to $OUTPUT_FILE"
