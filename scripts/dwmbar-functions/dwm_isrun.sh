#!/bin/sh

# Determine whether an application is running
dwm_isrun() {
	DTTERM=$(pgrep $1)
	if [[ -n "$DTTERM" ]]; then
		printf "$2"
	fi
}
dwm_isrun
