#!/usr/bin/env bash
window=$(scrollmsg -t get_tree | jq -r '..|try select(.app_id == "footdropterm")')
windowpid=$(echo $window | jq -r '.pid')

if [ ! -z "$windowpid" ]; then
	if [ "$(echo $window | jq -r .visible)" = "true" ]; then
		scrollmsg [app_id="footdropterm" pid="$windowpid" ] move scratchpad
	else
		scrollmsg [app_id="footdropterm"] move container to workspace current, move position cursor, focus
	fi
else
	scrollmsg exec 'foot -o colors.alpha=0.8 -a "footdropterm"'
fi
