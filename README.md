##################################################################################################

Log Archive Tool

##################################################################################################

## Description ##

This is a simple command-line tool that archives log files by compressing them into a .tar.gz format and storing them in a separate directory. This tool is especially useful for cleaning up old logs while keeping them for future reference in a compressed format.
This project was created for `Roadmaps.sh`.
(https://roadmap.sh/projects/server-stats)

## Requirements ##
The tool should:

- Accept a log directory as an argument.
- Compress log files in the specified directory into a .tar.gz archive.
- Store the compressed archives in a separate directory.
- Log the date and time of the archive operation in an archive.log file.


## Features ##
- Command-line interface to run the tool.
- Compresses logs into .tar.gz format.
- Stores the archived logs in a separate directory (archived_logs).
- Logs each archive operation with a timestamp to a log file (archive.log).


## Installation ##
1. Clone the repository to your local machine:
   ```bash
   git clone https://github.com/deavelarthiago/log-archive-tool

2. Navigate to the project directory:
   ```bash
   cd log-archive-tool

3. Make the script executable:
   ```bash
   chmod +x log-archive.sh

## How to Use ##
1. To use the tool, run the script and provide the log directory as an argument:
./log-archive.sh <log-directory>

- Archive File Name
The archive will be named in the following format:
logs_archive_<YYYYMMDD_HHMMSS>.tar.gz

- Log File
The tool logs the date and time of each archive operation in the archive.log file, located in the same directory as the logs being archived. The log entry format is:
`[YYYY-MM-DD HH:MM:SS] Archived logs to <archive-path>`

## Testing ##
To test the script, follow these steps:

- Create a test log directory:
   ```bash
   mkdir -p /tmp/logs

- Add some test log files:
   ```bash
   echo "Test log entry 1" > /tmp/logs/test1.log
   echo "Test log entry 2" > /tmp/logs/test2.log

- Run the script to archive the logs:
   ```bash
   ./log-archive.sh /tmp/logs

- Verify the archive in the archived_logs directory:
   ```bash
   ls /tmp/logs/archived_logs

- Check the contents of the archive:
   ```bash
   tar -xvzf /tmp/logs/archived_logs/logs_archive_20241122_173831.tar.gz -C /tmp/logs/archived_logs
   cat /tmp/logs/archive.log

## Contribution ##
Fork the project.

Create a branch for your feature:
   git checkout -b `my-feature`

Make your changes and commit:
   git commit -m "Added feature X"

Push your changes:
   git push origin my-feature

Open a Pull Request.
