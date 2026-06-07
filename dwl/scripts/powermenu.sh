#!/bin/bash

options="DOWN\nSLEEP\nREBOOT"
selected=$(echo -e $options | mew)

if [[ $selected == "DOWN" ]]; then
    systemctl poweroff
elif [[ $selected == "REBOOT" ]]; then
    systemctl reboot
elif [[ $selected == "SLEEP" ]]; then
    systemctl suspend
    wlock
fi

