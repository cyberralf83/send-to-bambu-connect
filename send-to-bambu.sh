#!/bin/bash

#add the following line to /Users/michael/Desktop/Current\ Models/send-to-bambu.sh "$OUTPUT_FILE"

# Get the full file path from Orca
FILE_PATH="$1"

# Extract the filename (no extension)
FILE_NAME=$(basename "$FILE_PATH")
FILE_NAME_NO_EXT="${FILE_NAME%.*}"

# URL encode both components using Python
ENCODED_PATH=$(python3 -c "import urllib.parse, sys; print(urllib.parse.quote(sys.argv[1]))" "$FILE_PATH")
ENCODED_NAME=$(python3 -c "import urllib.parse, sys; print(urllib.parse.quote(sys.argv[1]))" "$FILE_NAME_NO_EXT")

# Launch Bambu Connect using its URL scheme
open "bambu-connect://import-file?path=${ENCODED_PATH}&name=${ENCODED_NAME}&version=1.0.0"