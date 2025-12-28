#!/usr/bin/env bash
set -e
selection=$(scrollmsg -t get_workspaces -r | jq -r -c '. [] | .name' | fuzzel -d -p "Workspace Switch ")
[[ -z $selection ]] && exit
scrollmsg workspace \"$selection\"
