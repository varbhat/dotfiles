#!/bin/bash

str=""
workspaces=($(swaymsg -t get_workspaces -r | jq -r -c '.[] | .name'))
for workspace in "${workspaces[@]}"; do
	str="$str$workspace\n"
done

selection=$(printf $str | fuzzel -d -p "Move window to which workspace")
[[ -z $selection ]] && exit
readarray -t query_and_workspace <<<"$selection"
query="${query_and_workspace[0]}"
workspace="${query_and_workspace[1]}"

if [[ -n $workspace ]]; then
	selection=$workspace
elif [[ -n $query ]]; then
	if [[ ${query##*:} == "new" ]]; then
		selection=${query%:*}
	else
		selection=$query
	fi
else
	exit
fi

swaymsg focus tiling
swaymsg move window to workspace $selection
swaymsg workspace $selection
