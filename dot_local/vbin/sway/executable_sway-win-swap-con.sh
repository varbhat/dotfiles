#!/usr/bin/env bash
# Based on https://gist.github.com/lbonn/89d064cde963cfbacabd77e0d3801398
set -e

row=$(swaymsg -t get_tree | jq -r '
    ..
    | objects
    | select(.type == "workspace") as $ws
    | ..
    | objects
    | select(has("app_id"))
    | (if .focused == true then "*" else " " end) as $asterisk
    | "\($asterisk) [\($ws.name)] \(.app_id): \(.name) (\(.id))\u0000icon\u001f\(.app_id)"' |
	fuzzel -d -p "Swap focussed Window with ")

if [ ! -z "$row" ]; then
	# shellcheck disable=SC2001
	conid=$(echo "$row" | sed 's/.*(\([0-9]*\))$/\1/')
	swaymsg swap container with con_id \"$conid\"
fi
