#!/usr/bin/env bash
set -x

function clear_marks_current_window() {
	marks="$(scrollmsg -t get_tree | jq -r 'recurse(.nodes[]?) | recurse(.floating_nodes[]?) | select(.focused==true) | {marks} | .[].[]')"
	# https://stackoverflow.com/a/24628676
	SAVEIFS=$IFS
	IFS=$'\n'
	marks=($marks)
	IFS=$SAVEIFS
	for ((i = 0; i < ${#marks[@]}; i++)); do
		sway "unmark \"${marks[$i]}\""
	done
	exit
}

mark=$(fuzzel -d -p "Set mark ")
[[ -z $mark ]] && clear_marks_current_window
scrollmsg mark \"$mark\"
