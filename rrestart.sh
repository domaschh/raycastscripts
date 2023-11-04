#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title cmdr
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🤖
# @raycast.packageName rrcmd

# Documentation:
# @raycast.description restart rcmd
# @raycast.author Domasch
# @raycast.authorURL https://raycast.com/Domasch

APP_NAME="rcmd"

# Search for the PID of the app
APP_PID=$(pgrep "$APP_NAME")

# Check if the app is running
if [[ -n $APP_PID ]]; then
    echo "Stopping $APP_NAME (PID: $APP_PID)..."
    kill $APP_PID
    sleep 0.2 # Wait for the process to terminate

    # Start the app again
    echo "Starting $APP_NAME..."
    open -a "$APP_NAME"
    echo "Done."
else
    echo "Starting $APP_NAME..."
    open -a "$APP_NAME"
    echo "$APP_NAME is not running."
fi
