#!/usr/bin/env bash

# Define a function to copy data to the clipboard and clear it after a certain amount of time
function clip() {
    # Define the sleep process command
    local sleep_argv0="pass sleep on display $DISPLAY"

    # Kill the sleep process if it's running
    pkill -f "^$sleep_argv0" 2>/dev/null && sleep 0.5

    # Copy the data to the clipboard using copyq
    if ! copyq copy -- "$1" >/dev/null 2>&1; then
        # Print an error message and exit with a non-zero status code
        echo "Error: Could not copy data to the clipboard" >&2
        exit 1
    fi

    # Start the sleep process in the background to clear the clipboard after a certain amount of time
    (
        ( exec -a "$sleep_argv0" sleep "$CLIP_TIME" )
        copyq -e "if (size() > 0) { select(0); } else { copy(''); }"
    ) 1>/dev/null & disown

    # Print a success message
    echo "Copied $2 to clipboard using copyq. Will clear in $CLIP_TIME seconds."
}

# Call the clip function with the given arguments
cmd_show --clip "$@"
