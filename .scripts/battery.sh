#!/bin/bash -

last_report_cap=80;
while :
do
	current_cap=$(cat /sys/class/power_supply/BAT0/capacity);
	if [ $current_cap -le $[$last_report_cap-10] ] || [ $current_cap -lt 10 -a $current_cap -lt $[$last_report_cap-1] ]; then
		last_report_cap=$current_cap;
		if [ $current_cap -lt 25 ]; then
			urgency_level="critical"
		else
			urgency_level="normal"
		fi
		sudo -u zakrent DISPLAY=:0 notify-send -u $urgency_level "Battery Level" "Current battery level is at <b>$current_cap%</b>"
	elif [ $current_cap -gt $last_report_cap ]; then
		last_report_cap=$current_cap
	fi
	sleep 2;
done

