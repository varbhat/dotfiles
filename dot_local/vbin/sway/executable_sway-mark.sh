#!/bin/bash
set -x

function clear_marks_current_window() {
	mark=($(swaymsg -t get_tree | jq -r 'recurse(.nodes[]?) | recurse(.floating_nodes[]?) | select(.focused==true) | {marks} | .marks[0]'))
	sway unmark $mark
	exit
}

mark=$(fuzzel -d -p "Set mark to (leave empty to remove)")
[[ -z $mark ]] && clear_marks_current_window
swaymsg focus tiling
swaymsg mark $mark
