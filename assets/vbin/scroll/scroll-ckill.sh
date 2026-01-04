#!/usr/bin/env bash
set -e

wins=$(scrollmsg -t get_tree | jq -r '
    ..
    | select (.pid? and .visible?)')

selection=$(echo ${wins} | jq -r '
    .rect
    | "\(.x),\(.y) \(.width)x\(.height)"' |
	slurp -r)

if [ ! -z "$selection" ]; then
	cr=$(echo "${selection}" | tr ',' ' ' | tr 'x' ' ')
	conid=$(echo "${wins}" | jq -r ". |
	   select(.rect.x ==  "$(echo "${cr}" | cut -d' ' -f1)" and
	          .rect.y == "$(echo "${cr}" | cut -d' ' -f2)" and
	          .rect.width == "$(echo "${cr}" | cut -d' ' -f3)" and
	          .rect.height == "$(echo "${cr}" | cut -d' ' -f4)"
            ) | .id ")
	scrollmsg "[con_id=$conid] kill"
fi
