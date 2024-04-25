#!/usr/bin/env bash
set -e
selection=$(swaymsg -t get_workspaces -r | jq -r -c '. [] | .name' | fuzzel -d -p "Workspace Switch ")
[[ -z $selection ]] && exit
swaymsg workspace \"$selection\"
