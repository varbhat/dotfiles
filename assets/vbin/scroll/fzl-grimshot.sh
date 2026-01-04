#!/usr/bin/env bash

active="Active window"
screen="All visible outputs"
output="Currently active output"
area="Select an area"
window="Select a window"

copy="Copy to clipboard"
save="Save file"
dragon="Dragon"

tmp_filename="/tmp/screenshot_$(date +%d)-$(date +%m)-$(date +%y)_$(date +%T).png"

# Function taken directly from grimshot
# https://github.com/swaywm/sway/blob/master/contrib/grimshot
target_directory() {
	test -f "${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs" &&
		. "${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs"

	echo "${XDG_SCREENSHOTS_DIR:-${XDG_PICTURES_DIR:-$HOME}}"
}

# Fuzzel CMD
fuzzel_cmd() {
	fuzzel --dmenu --prompt "Screenshot> "
}

# Pass variables to fuzzel dmenu
run_fuzzel() {
	echo -e "$active\n$screen\n$output\n$area\n$window" | fuzzel_cmd
}

# Mode selection
mode_cmd() {
	fuzzel --dmenu
}

# Ask to select mode
select_mode() {
	echo -e "$copy\n$save\n$dragon" | mode_cmd
}

menu_option="$(run_fuzzel)"
if [[ ! -z "$menu_option" ]]; then
	case $menu_option in
	$active)
		grimshot save active $tmp_filename >/dev/null 2>&1
		;;
	$screen)
		grimshot save screen $tmp_filename >/dev/null 2>&1
		;;
	$output)
		grimshot save output $tmp_filename >/dev/null 2>&1
		;;
	$area)
		grimshot save area $tmp_filename >/dev/null 2>&1
		;;
	$window)
		grimshot save window $tmp_filename >/dev/null 2>&1
		;;
	esac
	mode="$(select_mode)"
	if [[ ! -z "$mode" ]]; then
		case $mode in
		$copy)
			wl-copy --type image/png <$tmp_filename
			;;
		$save)
			cp $tmp_filename $(target_directory)
			;;
		$dragon)
			dragon-drop $tmp_filename
			;;
		esac
	fi
	rm $tmp_filename
fi
