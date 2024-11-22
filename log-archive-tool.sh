#!/bin/bash

# Check if the user provided the log directory as an argument
if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <log-directory>"
  exit 1
fi

# Get the log directory from the argument
LOG_DIR=$1

# Check if the provided log directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Directory $LOG_DIR does not exist."
  exit 1
fi

# Create the archive directory if it doesn't exist
ARCHIVE_DIR="$LOG_DIR/archived_logs"
mkdir -p "$ARCHIVE_DIR"

# Generate the archive file name with timestamp (YYYYMMDD_HHMMSS)
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
ARCHIVE_FILE="$ARCHIVE_DIR/logs_archive_$TIMESTAMP.tar.gz"

# Compress the logs into a .tar.gz file
tar -czf "$ARCHIVE_FILE" -C "$LOG_DIR" .

# Log the date and time of the archive operation to archive.log
ARCHIVE_LOG="$LOG_DIR/archive.log"
echo "[$(date +"%Y-%m-%d %H:%M:%S")] Archived logs to $ARCHIVE_FILE" >> "$ARCHIVE_LOG"

# Confirm the operation with a message
echo "Logs successfully archived to $ARCHIVE_FILE"
