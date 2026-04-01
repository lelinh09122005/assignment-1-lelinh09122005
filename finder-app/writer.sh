#!/bin/sh

# Check if both arguments are provided
if [ $# -lt 2 ]; then
    echo "Error: Missing parameters."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Create the directory path if it doesn't exist
dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

# Write content to file, overwriting existing file
echo "$writestr" > "$writefile"

# Check if file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Could not create file $writefile"
    exit 1
fi
