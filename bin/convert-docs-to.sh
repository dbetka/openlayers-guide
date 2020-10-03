#!/bin/bash

# Configuration
docs_path="docs"
new_type=$1
new_extension=$2
main_type='gfm'
main_extension='md'

# Duplicate dir tree
find $docs_path/$main_type -type d | while read source_dir;
do
  # Extract path without docs and type paths
  new_dir=${source_dir#*/}
  new_dir=${new_dir#*/}

  # Correct path if it's base dir for type path
  if [ "$new_dir" == "$main_type" ]; then
    new_dir=$docs_path/$new_type
  else
    new_dir=$docs_path/$new_type/$new_dir
  fi

  # Create dir if $new_dir doesn't exist.
  if [ ! -d "$new_dir" ]; then
    mkdir "$new_dir"
    echo "Create    $new_dir"
  fi
done

# Convert main type docs to new type
# Put these into new dir tree
find $docs_path/$main_type -name "*.md" | while read source_file;
do
  # Extract path without docs and type paths
  new_file=${source_file#*/}
  new_file=${new_file#*/}
  # Remove old extension
  new_file=${new_file%.$main_extension}
  # Create new extension and new dirs
  new_file="$docs_path/$new_type/$new_file.$new_extension"

  # Convert single file and put it into new dir tree
  pandoc -f "$main_type" -t "$new_type" -o "$new_file" "$source_file" ;
  echo "Create    $new_file"
done
