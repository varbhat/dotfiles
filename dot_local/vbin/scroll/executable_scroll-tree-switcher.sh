#!/usr/bin/env bash
# Based on https://gist.github.com/lbonn/89d064cde963cfbacabd77e0d3801398
set -e

row=$(scrollmsg -t get_tree | jq -r '
    ..
    | objects
    | select(.type == "workspace") as $ws
    | ..
    | objects
    | select(has("app_id"))
    | (if .focused == true then "*" else " " end) as $asterisk
    | "\($asterisk) [\($ws.name)] \(.app_id): \(.name) (\(.id))\u0000icon\u001f\(.app_id)"' |
	fuzzel -d -p "Window Switcher ")

if [ ! -z "$row" ]; then
	# shellcheck disable=SC2001
	conid=$(echo "$row" | sed 's/.*(\([0-9]*\))$/\1/')
	scrollmsg "[con_id=$conid] focus"
fi
