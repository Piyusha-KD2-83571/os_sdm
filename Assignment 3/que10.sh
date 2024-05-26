#!/bin/bash

# Function to print the Fibonacci series up to n terms
fibonacci() {
    local n=$1
    a=0
    b=1

    echo "The first $n terms of the Fibonacci series are:"

    for (( i=0; i<n; i++ )); do
        echo -n "$a "
        fn=$((a + b))
        a=$b
        b=$fn
    done
    echo
}

# Prompt the user to enter the number of terms
read -p "Enter the number of terms: " number

# Check if the input is a valid non-negative integer
if ! [[ "$number" =~ ^[0-9]+$ ]] || [ "$number" -lt 1 ]; then
    echo "Invalid input. Please enter a valid positive integer."
    exit 1
fi

# Print the Fibonacci series up to the given number of terms
fibonacci $number

