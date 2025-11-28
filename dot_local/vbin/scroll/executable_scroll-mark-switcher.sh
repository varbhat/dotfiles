#!/usr/bin/env bash
set -e
mark=$(scrollmsg -t get_marks | jq -r '.[]' | fuzzel -d -p "Switch to mark ")
[[ -z $mark ]] && exit
scrollmsg "[con_mark=\"$mark\"]" focus
