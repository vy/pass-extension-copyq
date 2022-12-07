#!/bin/bash

clip() {
	local sleep_argv0="password store sleep on display $DISPLAY"
	pkill -f "^$sleep_argv0" 1>/dev/null && sleep 0.5
	copyq copy -- "$1" >/dev/null 2>&1 || die "Error: Could not copy data to the clipboard"
	(
		( exec -a "$sleep_argv0" sleep "$CLIP_TIME" )
		copyq -e "if (size() > 0) { select(0); } else { copy(''); }"
	) >/dev/null 2>&1 & disown
	echo "Copied $2 to clipboard using copyq. Will clear in $CLIP_TIME seconds."
}

cmd_show --clip "$@"
