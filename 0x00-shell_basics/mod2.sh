#!/bin/bash
# Set the directory path
dir="."
# Find all the files in the directory
files=$(find "$dir" -type f)
# Loop through the list of files
for file in $files; do
  # Use the sed command to delete all empty lines and newlines in each file
  sed -i '/^\s*$/d' "$file"
done
