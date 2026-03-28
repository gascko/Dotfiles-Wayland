#!/bin/bash

image="/home/konrad/$(date +'%m-%d-%Y-%H%M%S').png"

if [[ $1 == "selection" ]]; then
	grim -g "$(slurp)" $image
else
	grim $image
fi

dunstify -h string:x-dunst-stack-tag:screenshot -u low "Screenshot saved at ${image}" 
