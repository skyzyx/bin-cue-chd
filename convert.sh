#!/bin/bash

echo "Will proccess files on directory: $1"
cd "$1" || exit

for file in "$1"/*.cue; do
    chdman createcd -i "$file" -o "${file%.*}.chd"
done

echo "Done."
