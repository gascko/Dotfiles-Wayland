if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec dwl -s "swaybg -i ~/wallpaper.png -m fill" &> ~/log
fi
