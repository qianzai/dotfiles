#!/bin/bash
kill $(ps -ef |grep /home/bzm/scripts/ |awk '{print $2}')

nm-applet &
blueman-applet &

/bin/bash ~/scripts/wp-autochange.sh &
/bin/bash ~/scripts/dwm-status.sh &
/bin/bash ~/scripts/picom-up.sh &
/bin/bash ~/scripts/tap-to-click.sh &
/bin/bash ~/scripts/inverse-scroll.sh &
/bin/bash ~/scripts/autostart_wait.sh &
# xfce4-power-manager &
#kdeconnect-indicator &
#xfce4-volumed-pulse &
#/bin/bash ~/scripts/run-mailsync.sh &
#/bin/bash ~/scripts/setxmodmap-colemak.sh &
