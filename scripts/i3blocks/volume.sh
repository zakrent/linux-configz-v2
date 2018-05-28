#!/bin/bash

volume=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $2 }')
mute=$(amixer sget Master | grep 'Right:' | awk -F'[][]' '{ print $4 }')

if [[ $volume == "0%" ]] || [[ $mute == "off" ]]; then
	icon="&#xf026;  "
else
	icon="&#xf028;"
fi

echo "$icon" "" "$volume"

case $BLOCK_BUTTON in
	3) amixer -q sset Master toggle ;;  # right click, mute/unmute
	4) amixer -q sset Master "5%"+ unmute ;; # scroll up, increase
	5) amixer -q sset Master "5%"- unmute ;; # scroll up, increase
esac

