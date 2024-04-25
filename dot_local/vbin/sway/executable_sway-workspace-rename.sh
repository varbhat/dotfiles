#!/usr/bin/env bash
workspace=$(fuzzel -d -p "Rename workspace ")
[[ -z "$workspace" ]] && exit
if ! [[ $workspace =~ ^[0-9] ]]; then
	cur_wsnum="$(swaymsg -t get_workspaces | jq '.[] | select(.focused==true) | .num')"
	workspace="${cur_wsnum}:${workspace}"
fi
swaymsg rename workspace to \"$workspace\"
