status="$(cat /sys/class/power_supply/BAT0/status)"
status1="$(cat /sys/class/power_supply/BAT1/status)"
percent="$(cat /sys/class/power_supply/BAT0/capacity)"

if [[ $status != "Charging" && $status1 != "Charging" && $percent -lt 20 ]]; then
	notify-send -u critical "Battery at ${percent}%!" 
fi
