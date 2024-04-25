#!/usr/bin/env bash
set -e
mark=$(swaymsg -t get_marks | jq -r '.[]' | fuzzel -d -p "Switch to mark ")
[[ -z $mark ]] && exit
swaymsg "[con_mark=\"$mark\"]" focus
