#!/bin/bash
# Define the directory to be processed
directory="./"
# Get a list of all files in the directory
files=$(ls $directory)
# Loop through all files in the directory
for file in $files; do
  # Check if the file is a regular file
  if [ -f $directory/$file ]; then
    # Create a temporary file for storing the modified contents
    tmpfile=$(mktemp)
    # Read the first line of the file
    first_line=$(head -n 1 $directory/$file)
    # Modify the first line
    modified_first_line="#!/bin/bash"
    # Write the modified first line to the temporary file
    echo $modified_first_line > $tmpfile
    # Append the rest of the file contents to the temporary file
    tail -n +2 $directory/$file >> $tmpfile
    # Replace the original file with the temporary file
    mv $tmpfile $directory/$file
  fi
done

