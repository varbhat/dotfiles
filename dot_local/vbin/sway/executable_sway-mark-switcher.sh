#!/bin/bash
marks=($(swaymsg -t get_marks | jq -r '.[]'))
str=""
for mark in "${marks[@]}"; do
	str="$str$mark\n"
done
mark=$(printf $str | fuzzel -d -p "Select a mark")
[[ -z $mark ]] && exit
swaymsg "[con_mark=\b$mark\b]" focus
