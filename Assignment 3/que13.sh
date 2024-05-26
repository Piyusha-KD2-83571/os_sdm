#!/bin/bash

# List only hidden files in the current directory
hidden_files=$(ls -a | grep "^\.")

# Check if there are hidden files
if [ -n "$hidden_files" ]; then
    echo "Hidden files in the current directory:"
    echo "$hidden_files"
else
    echo "No hidden files found in the current directory."
fi

