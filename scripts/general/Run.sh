#!/usr/bin/env bash
# Author: buzhengmiao
# vx: Qian_zai521
# Date: 2021-08-27 15:57

DTTERM=`pgrep $1`
if [[ -n "$DTTERM" ]]; then
	killall $1
else
	$2 &>/dev/null
fi
