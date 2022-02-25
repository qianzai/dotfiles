#!/bin/sh

get_time_until_charged() {

	# parses acpitool's battery info for the remaining charge of all batteries and sums them up
	sum_remaining_charge=$(acpitool -B | grep -E 'Remaining capacity' | awk '{print $4}' | grep -Eo "[0-9]+" | paste -sd+ | bc);

	# finds the rate at which the batteries being drained at
	present_rate=$(acpitool -B | grep -E 'Present rate' | awk '{print $4}' | grep -Eo "[0-9]+" | paste -sd+ | bc);

	# divides current charge by the rate at which it's falling, then converts it into seconds for `date`
	seconds=$(bc <<< "scale = 10; ($sum_remaining_charge / $present_rate) * 3600");

	# prettifies the seconds into h:mm:ss format
	pretty_time=$(date -u -d @${seconds} +%T);

	echo $pretty_time;
}

dwm_bat(){
	# get charge of all batteries, combine them
	total_charge=$(expr $(acpi -b | awk '{print $4}' | grep -Eo "[0-9]+" | paste -sd+ | bc));

	# get amount of batteries in the device
	battery_number=$(acpi -b | wc -l);

	percent=$(expr $total_charge / $battery_number);

	if $(acpi -b | grep --quiet Discharging)
	then
        if [ $percent -ge 90 -a $percent -lt 100 ]; then
			battery_status="🔋"
		elif [ $percent -ge 65 -a $percent -lt 90 ]; then
			battery_status=""
		elif [ $percent -ge 40 -a $percent -lt 65 ]; then
			battery_status=""
		elif [ $percent -ge 25 -a $percent -lt 40 ]; then
			battery_status=""
		elif [ $percent -lt 25 ]; then
			battery_status=""
		fi
		printf "[ %s %s%s ]" $battery_status $percent %
	else
		battery_status="🔌"
		printf "[ %s %s%s ]" $battery_status $percent %
	fi


}

dwm_bat
