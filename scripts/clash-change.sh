#!/usr/bin/env bash

DTTERM=`pgrep clash`
if [[ -n "$DTTERM" ]]; then
	killall clash
	notify-send -i empathy "clash 代理 已关闭"
else
	notify-send -i empathy "clash 代理 已开启"
	clash &>/dev/null
fi

