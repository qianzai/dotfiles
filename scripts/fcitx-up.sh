#!/usr/bin/env bash

command=fcitx5
DTTERM=`pgrep $command`
if [[ -n "$DTTERM" ]]; then
	killall $command
	notify-send -i empathy "$command  已关闭"
else
	notify-send -i empathy "$command  已开启"
	$command -d &>/dev/null
fi
