#!/bin/bash

statusBat1="$(cat /sys/class/power_supply/BAT0/status)"
statusBat2="$(cat /sys/class/power_supply/BAT1/status)"
capacity="$(cat /sys/class/power_supply/BAT0/capacity)"

if [[ $1 == "check" ]]; then
	if [[ $statusBat1 != "Charging" && $statusBat2 != "Charging" && $capacity -lt 20 ]]; then
		/usr/bin/notify-send -t 10000 "Battery Low! ${capacity}% (${statusBat1})" --category BATTERY
	fi
else
	/usr/bin/notify-send "Battery ${capacity}% (${statusBat1}, ${statusBat2})" --category BATTERY --hint=INT:value:$capacity
fi
