#!/usr/bin/env bash
selection=$(scrollmsg -t get_workspaces -r | jq -r -c '. [] | .name' | fuzzel -d -p "Move which workspace to current output ")
[[ -z $selection ]] && exit
focused_output=$(scrollmsg -r -t get_outputs | jq -r '.[] | select( .focused == true ) | .name')
scrollmsg workspace \"$selection\"
scrollmsg move workspace to \"$focused_output\"
