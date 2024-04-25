#!/usr/bin/env bash
window=$(swaymsg -t get_tree | jq -r '..|try select(.app_id == "footdropterm")')
windowpid=$(echo $window | jq -r '.pid')

if [ ! -z "$windowpid" ]; then
	if [ "$(echo $window | jq -r .visible)" = "true" ]; then
		swaymsg [app_id="footdropterm" pid="$windowpid" ] move scratchpad
	else
		swaymsg [app_id="footdropterm"] move container to workspace current, move position cursor, focus
	fi
else
	swaymsg exec 'foot -o colors.alpha=0.8 -a "footdropterm"'
fi
