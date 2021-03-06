#!/bin/sh

# A dwm_bar function to display information regarding system memory, CPU temperature, and storage
# Joe Standring <git@joestandring.com>
# GNU GPLv3

dwm_men () {
	memfree=$(echo "scale=2; $(grep -m1 'MemAvailable:' /proc/meminfo | awk '{print $2}')/1048576" | bc)
	printf "💿 %sG" "$memfree"
}

dwm_men
