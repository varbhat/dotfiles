#!/usr/bin/env bash
set -e
mark=$(swaymsg -t get_marks | jq -r '.[]' | fuzzel -d -p "Swap focussed window with mark ")
[[ -z $mark ]] && exit
swaymsg swap container with mark \"$mark\"
