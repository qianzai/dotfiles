#!/bin/bash

sleep 5

xfce4-notifyd &
xfce4-power-manager &

fcitx5 -d

utools &

/bin/bash ~/scripts/general/Run.sh imwheel imwheel
# /bin/bash ~/scripts/vnc_start.sh &
