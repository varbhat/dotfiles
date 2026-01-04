#!/usr/bin/env bash
workspace=$(fuzzel -d -p "New workspace ")
[[ -z "$workspace" ]] && exit
if ! [[ "$workspace" =~ ^[0-9] ]]; then
	new_wsid="$(scrollmsg -t get_workspaces -r | jq '[.[].num] | max' | sed 's/$/+1/' | bc)"
	workspace="${new_wsid}:${workspace}"
fi
scrollmsg workspace "$workspace"
