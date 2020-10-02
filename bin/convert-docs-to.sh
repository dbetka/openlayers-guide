#!/bin/bash

docs_path="docs"
new_type=$1
main_type='gfm'

find $docs_path/$main_type -type d | while read source_dir;
do
  new_dir=${source_dir#*/}
  new_dir=${new_dir#*/}
  if [ "$new_dir" == "$main_type" ]; then
    new_dir=$docs_path/$new_type
  else
    new_dir=$docs_path/$new_type/$new_dir
  fi

  # Create dir if $new_dir exists.
  if [ ! -d "$new_dir" ]; then
    mkdir "$new_dir"
    echo "Create    $new_dir"
  fi
done

find $docs_path/$main_type -name "*.md" | while read source_file;
do
  new_file=${source_file#*/}
  new_file=${new_file#*/}
  new_file=${new_file%.md}
  new_file="$docs_path/$new_type/$new_file.$new_type"

  pandoc -f "$main_type" -t "$new_type" -o "$new_file" "$source_file" ;
  echo "Create    $new_file"
done
