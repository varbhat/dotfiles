#!/bin/bash

str=""
workspaces=($(swaymsg -t get_workspaces -r | jq -r -c '.[] | .name'))
for workspace in "${workspaces[@]}"; do
	str="$str$workspace\n"
done
selection=$(printf $str | fuzzel -d -p "Switch to which workspace")
[[ -z $selection ]] && exit

swaymsg workspace $selection
