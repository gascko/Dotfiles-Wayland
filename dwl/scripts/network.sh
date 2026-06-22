#!/bin/bash

wifiRadio="$(nmcli radio wifi)"

if [[ $wifiRadio == "enabled" ]]; then
	connectivity="$(nmcli networking connectivity)"

	if [[ ! $connectivity == "none" ]]; then
		ssid="$(nmcli -t -f active,ssid dev wifi | grep '^ja' | cut -d: -f2)"
		notify-send "Network: $ssid" --category NETWORK
	else
		notify-send "Network: N/C" --category NETWORK
	fi
else
	notify-send "Network: N/A" --category NETWORK
fi
