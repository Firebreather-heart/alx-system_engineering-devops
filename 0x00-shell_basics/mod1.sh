#!/bin/bash

# Set the directory path
dir="."

# Find all the files in the directory
files=$(find "$dir" -type f)

# Loop through the list of files
for file in $files; do
  # Add a new line to the end of each file
  echo "" >> "$file"
done


