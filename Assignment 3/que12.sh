#!/bin/bash

# Check if the filename argument is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Extract filename from the argument
filename=$1

# Check if the file exists
if [ -f "$filename" ]; then
    # Get the last modification time of the file
    last_modified=$(stat -c "%y" "$filename")
    echo "Last modification time of $filename: $last_modified"
else
    echo "File '$filename' does not exist."
fi

