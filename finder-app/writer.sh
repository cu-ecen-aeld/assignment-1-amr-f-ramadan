#!/bin/bash

# Check if the number of arguments is less than 2
if [ "$#" -ne 2 ]; then
    echo "Error: Please specify the file path and the text string."
    exit 1
fi

writefile="$1"
writestr="$2"

# Create the directory path if it doesn't exist
mkdir -p "$(dirname "$writefile")"

# Write the text string to the file
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ $? -ne 0 ]; then
    echo "Error: Failed to create the file $writefile"
    exit 1
fi

echo "File $writefile created with content:"
echo "$writestr"
