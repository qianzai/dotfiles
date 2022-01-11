#!/bin/bash

sleep 10

dunst &

fcitx5 -d

utools &

/bin/bash ~/scripts/general/Run.sh imwheel imwheel
/bin/bash ~/scripts/vnc_start.sh &
