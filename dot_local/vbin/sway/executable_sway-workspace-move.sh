#!/bin/bash

str=""
workspaces=($(swaymsg -t get_workspaces -r | jq -r -c '.[] | .name'))
for workspace in "${workspaces[@]}"; do
	str="$str$workspace\n"
done
selection=$(printf $str | fuzzel -d -p "Move which workspace to current output")
[[ -z $selection ]] && exit
focused_output=$(swaymsg -r -t get_outputs | jq -r '.[] | select( .focused == true ) | .name')
swaymsg workspace $selection
swaymsg move workspace to $focused_output
