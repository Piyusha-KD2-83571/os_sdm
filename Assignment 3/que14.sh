#!/bin/bash

# List only executable files in the current directory
executable_files=$(ls -l | grep "^-..x" | awk '{print $NF}')

# Check if there are executable files
if [ -n "$executable_files" ]; then
    echo "Executable files in the current directory:"
    echo "$executable_files"
else
    echo "No executable files found in the current directory."
fi

#!/BIN/BASH

# pROMPT THE USER TO ENTER THE BASIC SALARY
READ -P "eNTER THE BASIC SALARY: " BASIC_SALARY

# cHECK IF THE INPUT IS A VALID POSITIVE NUMBER
IF ! [[ "$BASIC_SALARY" =~ ^[0-9]+(\.[0-9]+)?$ ]]; THEN
    ECHO "iNVALID INPUT. pLEASE ENTER A VALID POSITIVE NUMBER."
    EXIT 1
FI

# cALCULATE da (40% OF BASIC SALARY)
DA=$(ECHO "$BASIC_SALARY * 0.40" | BC)

# cALCULATE hra (20% OF BASIC SALARY)
HRA=$(ECHO "$BASIC_SALARY * 0.20" | BC)

# cALCULATE GROSS SALARY
GROSS_SALARY=$(ECHO "$BASIC_SALARY + $DA + $HRA" | BC)

# dISPLAY THE GROSS SALARY
ECHO "tHE GROSS SALARY IS: $GROSS_SALARY"

