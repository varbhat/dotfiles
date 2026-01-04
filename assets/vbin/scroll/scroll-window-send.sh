#!/usr/bin/env bash
set -e
selection=$(scrollmsg -t get_workspaces -r | jq -r -c '.[] | .name' | fuzzel -d -p "Send window to ")
[[ -z $selection ]] && exit

# https://www.baeldung.com/linux/check-variable-exists-in-list
if ! echo "$workspaces" | grep -F -q -x "$selection"; then
	if ! [[ "$selection" =~ ^[0-9] ]]; then
		new_wsid="$(scrollmsg -t get_workspaces -r | jq '[.[].num] | max' | sed 's/$/+1/' | bc)"
		selection="${new_wsid}:${selection}"
	fi
fi

scrollmsg move window to workspace \"$selection\"
