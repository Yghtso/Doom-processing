#!/bin/bash

# Loop through each file in the current directory
for file in *; do
    # Check if the file has a .java extension
    if [[ "$file" == *.java ]]; then
        # Rename .java to .pde
        new_file="${file%.java}.pde"
        mv "$file" "$new_file"
        echo "Renamed $file to $new_file"
    # Check if the file has a .pde extension
    elif [[ "$file" == *.pde ]]; then
        # Rename .pde to .java
        new_file="${file%.pde}.java"
        mv "$file" "$new_file"
        echo "Renamed $file to $new_file"
    fi
done

