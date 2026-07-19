#!/bin/bash

if [[ $1 == "sleep" ]]; then
    systemctl sleep
    wlock
else
	notify-send --category "SHUTDOWN" "SHUTDOWN" --action="YES" --action="NO"
fi
