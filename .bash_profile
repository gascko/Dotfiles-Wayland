if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	exec ~/.config/dwl/scripts/statusbar.sh | dwl
fi
