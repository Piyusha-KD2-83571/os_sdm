#!/bin/bash

# Prompt the user to enter the basic salary
read -p "Enter the basic salary: " basic_salary

# Check if the input is a valid positive number
if ! [[ "$basic_salary" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Invalid input. Please enter a valid positive number."
    exit 1
fi

# Calculate DA (40% of basic salary)
da=$(echo "$basic_salary * 0.40" | bc)

# Calculate HRA (20% of basic salary)
hra=$(echo "$basic_salary * 0.20" | bc)

# Calculate gross salary
gross_salary=$(echo "$basic_salary + $da + $hra" | bc)

# Display the gross salary
echo "The gross salary is: $gross_salary"

