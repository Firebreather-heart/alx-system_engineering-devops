#!/bin/bash
# Set the directory path
dir="."
# Find all the files in the directory
files=$(find "$dir" -type f)
# Loop through the list of files
for file in $files; do
  # Use the wc command to count the number of lines in each file
  lines=$(wc -l "$file" | awk '{print $1}')
  # Print the number of lines and the file name
  echo "$lines $file"
done

