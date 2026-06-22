#!/bin/bash

if [[ $1 == "sleep" ]]; then
    systemctl sleep
    wlock
elif [[ $1 == "shutdown" ]]; then
	notify-send --category "POWERMENU SHUTDOWN" "Shutdown now?" "[KLICK TO PROCEED]" --action="YES"
fi
