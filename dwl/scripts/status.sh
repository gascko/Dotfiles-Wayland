#!/bin/bash

source ~/.config/dwl/scripts/volume.sh
source ~/.config/dwl/scripts/battery.sh
source ~/.config/dwl/scripts/network.sh

notify-send "$(date +%H:%M) Uhr"
