#!/bin/bash
TERM=foot
workspace=$(fuzzel -d -p "New workspace")
[[ -z $workspace ]] && exit
swaymsg workspace $workspace
IFS=':' read -ra cdpaths <<<"$CDPATH"
for path in "${cdpaths[@]}"; do
	echo "$path/$workspace"
	if [[ -d "$path/$workspace" ]]; then
		swaymsg exec "$TERM --detach --working-directory \"$path/$workspace\""
		exit
	fi
done
