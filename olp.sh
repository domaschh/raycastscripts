#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open Latest PDF
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 📄
# @raycast.packageName PDF Tools

# Documentation:
# @raycast.description Open the most recently downloaded PDF in the Downloads folder.
# @raycast.author Your Name
# @raycast.authorURL Your URL

DOWNLOADS_FOLDER="$HOME/Downloads"

# Find the most recent PDF file in the Downloads folder
LATEST_PDF=$(find "$DOWNLOADS_FOLDER" -name '*.pdf' -print0 | xargs -0 ls -lt | head -n 1 | awk '{print $9}')

# Check if a PDF was found
if [[ -n "$LATEST_PDF" ]]; then
    # Open the latest PDF
    open "$LATEST_PDF"
    echo "Opening latest PDF..."
else
    echo "No PDF files found in the Downloads folder."
fi
