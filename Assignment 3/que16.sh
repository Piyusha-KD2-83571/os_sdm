#!/bin/bash

# Prompt the user to enter the first filename
read -p "Enter the first filename: " first_file

# Check if the first file exists
if [ ! -f "$first_file" ]; then
    echo "Error: File '$first_file' does not exist."
    exit 1
fi

# Prompt the user to enter the second filename
read -p "Enter the second filename: " second_file

# Check if the second file exists
if [ ! -f "$second_file" ]; then
    echo "Error: File '$second_file' does not exist."
    exit 1
fi

# Convert contents of the first file to reverse case and append to the second file
tr '[:upper:][:lower:]' '[:lower:][:upper:]' < "$first_file" >> "$second_file"

echo "Contents of '$first_file' appended in reverse case to '$second_file'."

