#! /bin/bash

image="/home/konrad/$(date +'%m-%d-%Y-%H%M%S')_TMP.png"

colorpicker() { 
    grim -g "$(slurp)" $image
    hex=$(magick "$image" -scale 1x1\! -format "#%[hex:p{0,0}]" info: 2>/dev/null || echo "#??????")
	dunstify -h string:x-dunst-stack-tag:colorpicker -u low "Color: ${hex}"
	wl-copy "$hex"
	rm $image
}

colorpicker
