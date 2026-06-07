#!/bin/bash

image="/home/konrad/$(date +'%m-%d-%Y-%H%M%S').png"

if [[ $1 == "selection" ]]; then
	grim -g "$(slurp)" $image
else
	grim $image

fi

dunstify -u low "Screenshot saved at ${image}" 
