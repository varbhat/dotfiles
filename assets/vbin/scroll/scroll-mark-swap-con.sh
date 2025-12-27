#!/usr/bin/env bash
set -e
mark=$(scrollmsg -t get_marks | jq -r '.[]' | fuzzel -d -p "Swap focussed window with mark ")
[[ -z $mark ]] && exit
scrollmsg swap container with mark \"$mark\"
