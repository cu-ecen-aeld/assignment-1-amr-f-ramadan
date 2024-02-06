#!/bin/bash

# Check if the number of arguments is less than 2
if [ "$#" -ne 2 ]; then
    echo "Error: Please specify the files directory and the search string."
    exit 1
fi

filesdir="$1"
searchstr="$2"

# Check if filesdir is not specified or does not represent a directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a valid directory."
    exit 1
fi

# Count the number of files in the directory and all subdirectories
num_files=$(find "$filesdir" -type f | wc -l)

# Count the number of matching lines in respective files
num_matching_lines=$(grep -r "$searchstr" "$filesdir" | wc -l)

# Print the results
echo "The number of files are $num_files and the number of matching lines are $num_matching_lines"
