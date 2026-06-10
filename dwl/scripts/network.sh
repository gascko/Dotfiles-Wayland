#!/bin/bash

wifiRadio="$(nmcli radio wifi)"

if [[ $wifiRadio == "enabled" ]]; then
	connectivity="$(nmcli networking connectivity)"
	ssid="$(nmcli -t -f active,ssid dev wifi | grep '^ja' | cut -d: -f2)"

	if [[ ! $connectivity == "none" ]]; then
		notify-send "Network: $ssid" --category NETWORK
	fi
else
	notify-send "Network: N/A" --category NETWORK
fi
