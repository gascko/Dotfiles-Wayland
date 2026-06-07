#!/bin/bash

battery() {
    status="$(cat /sys/class/power_supply/BAT0/status)"
    status1="$(cat /sys/class/power_supply/BAT1/status)"
    percent="$(cat /sys/class/power_supply/BAT0/capacity)"

    if [[ $status == "Charging" || $status1 == "Charging" ]]; then
		echo -n -e "[BAT]: Charging"
	else 
		echo -n -e "[BAT]: $percent%"
	fi
}

wifi() {
    wifiRadio="$(nmcli radio wifi)"

    if [[ $wifiRadio == "enabled" ]]; then
        connectivity="$(nmcli networking connectivity)"
		ssid="$(nmcli -t -f active,ssid dev wifi | grep '^ja' | cut -d: -f2)"

        if [[ ! $connectivity == "none" ]]; then
			echo -n -e "[WIFI]: $ssid"
        fi
    else
		echo -n -e "[WIFI]: N/A"
    fi
}

volume() {
	volumeStatus="$(pulsemixer --get-volume | awk '{print $1}')"
	muteStatus="$(pulsemixer --get-mute)"

	if [[ $muteStatus == 1 ]]; then
		echo -n -e "[VOL]: Muted"
	else
		echo -n -e "[VOL]: $volumeStatus%"
	fi
}

notify-send "$(date +%H:%M)
$(volume) $(battery) $(wifi)"
