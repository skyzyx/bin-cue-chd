#!/usr/bin/env bash

echo "Will process files on directory: $1"
echo ""

# shellcheck disable=SC2034,SC2162
read -p "Press enter to continue. Press Ctrl+C to quit." x
cd "$1" || exit

"$(brew --prefix findutils)/bin/gfind" "$1" -type f -iname "*.cue" -print0 | while IFS= read -r -d '' file; do
    echo "Processing file: $file"
    "$(brew --prefix rom-tools)/bin/chdman" createcd -i "$file" -o "${file%.*}.chd"
done

echo "Done."
