#!/bin/bash

print_date(){
	date '+%Y年%m月%d日 %H:%M'
}

print_fcitx(){
	dwm_isrun fcitx 
}

LOC=$(readlink -f "$0")
DIR=$(dirname "$LOC")
export IDENTIFIER="unicode"

. "$DIR/dwmbar-functions/dwm_bat.sh"
. "$DIR/dwmbar-functions/dwm_alsa.sh"
. "$DIR/dwmbar-functions/dwm_men.sh"
. "$DIR/dwmbar-functions/dwm_weather.sh"
# . "$DIR/dwmbar-functions/dwm_networkmanager.sh"
. "$DIR/dwmbar-functions/dwm_isrun.sh"

get_bytes


# xsetroot -name " $(print_clash)  $(print_fcitx) [ 💿 $(print_mem)M ⬆$vel_trans ⬇$vel_recv $(dwm_alsa) ] $(dwm_weather) $(print_bat) $(print_date) "

upperbar=""
# upperbar="$upperbar$(print_fcitx) "
upperbar="$upperbar^c#fff1b8^[ $(dwm_men)  $(dwm_alsa) ] "
# upperbar="$upperbar$(dwm_weather) "
upperbar="$upperbar^c#bae7ff^$(dwm_bat) "
upperbar=" $upperbar^c#ffa39e^$(print_date) "

xsetroot -name "$upperbar"
