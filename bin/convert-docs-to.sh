#!/bin/bash

#!/bin/bash

# Read parameters
POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -e|--extension)
    EXTENSION="$2"
    shift # past argument
    shift # past value
    ;;
    -t|--type)
    TYPE="$2"
    shift # past argument
    shift # past value
    ;;
    #    --default)
    #    DEFAULT=YES
    #    shift # past argument
    #    ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

#echo "FILE EXTENSION  = ${EXTENSION}"
#echo "SEARCH PATH     = ${TYPE}"
#echo "DEFAULT         = ${DEFAULT}"
#echo "\$1              = $1"

# --------------------------------------------------------

# Configuration
docs_path="docs"
new_type=$TYPE
new_extension=$EXTENSION
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
  else
    echo "Exist     $new_dir"
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
