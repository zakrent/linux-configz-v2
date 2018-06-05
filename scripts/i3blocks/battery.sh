#!/bin/bash

BATTERY=$(cat /sys/class/power_supply/BAT0/capacity)
STATUS=$(cat /sys/class/power_supply/BAT0/status)

if [ ! -z $STATUS ]; then 
	if [ $STATUS == "Charging" ]; then
		ICON="&#xf1e6;" 
		COLOR=\#00AA80
	else
		if [[ $BATTERY -lt 15 ]]; then
			ICON="&#xf244;"
			COLOR=\#aa0000
		elif [[ $BATTERY -lt 35 ]]; then
			ICON="&#xf243;"
			COLOR=\#ff8800
		elif [[ $BATTERY -lt 60 ]]; then
			ICON="&#xf242;"
			COLOR=\#FFFF00
		elif [[ $BATTERY -lt 90 ]]; then
			ICON="&#xf241;"
			COLOR=\#88FF00
		else
			ICON="&#xf240;"
			COLOR=\#00ff00
		fi
	fi

	echo $BATTERY% $ICON 
	echo $ICON 
	echo $COLOR
fi
