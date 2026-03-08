#!/bin/bash

if [[ $1 == "up" ]]; then
	pulsemixer --change-volume +10
elif [[ $1 == "down" ]]; then
	pulsemixer --change-volume -10
elif [[ $1 == "mute" ]]; then
	pulsemixer --toggle-mute
fi

volume=$(pulsemixer --get-volume | awk '{ print $1 }')
mute=$(pulsemixer --get-mute)

if [[ $mute == 1 ]]; then
	dunstify -h string:x-dunst-stack-tag:volume -u low "Device Muted" 
else
	dunstify -h string:x-dunst-stack-tag:volume -u low -h int:value:"$volume" "Volume: ${volume}%" 
fi
