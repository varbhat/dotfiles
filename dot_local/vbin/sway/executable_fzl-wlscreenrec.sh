#!/usr/bin/env bash

reccurop="Current Output Sans Audio"
recsel="Selection Sans Audio"
selopnrec="Select Output and Record Sans Audio"
reccuropa="Current Ouput"
recsela="Selection"
selopnreca="Select Output and Record"

mark_file="$XDG_RUNTIME_DIR/screenrecord-file"

wl_screenrec_check() {
	if pgrep -x "wl-screenrec" >/dev/null; then
		pkill -INT -x wl-screenrec
		wl-copy --type video/mp4 <"$(cat $mark_file)"
		rm "$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		exit 0
	fi
}

wl_screenrec_check

# Function taken directly from grimshot
# https://github.com/swaywm/sway/blob/master/contrib/grimshot
target_directory() {
	test -f "${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs" &&
		. "${XDG_CONFIG_HOME:-$HOME/.config}/user-dirs.dirs"

	echo "${XDG_VIDEOS_DIR:-${XDG_VIDEOS_DIR:-$HOME}}"
}

target_file="$(target_directory)/recording_$(date +%d)-$(date +%m)-$(date +%y)_$(date +%T).mp4"

# Pass variables to fuzzel dmenu
run_fuzzel() {
	echo -e "$reccuropa\n$recsela\n$selopnreca\n$reccurop\n$recsel\n$selopnrec\n" | fuzzel -d -p "Recorder "
}

# Select Output
sel_output() {
	swaymsg -t get_outputs | jq -r '.[] | {name} | .name' | fuzzel -d -p "Select Output: "
}

# Select Focussed Output
focussed_output() {
	swaymsg -t get_outputs --raw | jq -r '. | map(select(.focused == true)) | .[0].name'
}

menu_option="$(run_fuzzel)"
if [[ ! -z "$menu_option" ]]; then
	case $menu_option in
	$reccurop)
		echo "$target_file" >"$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		wl-screenrec -o "$(focussed_output)" -f "$target_file"
		;;
	$recsel)
		echo "$target_file" >"$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		wl-screenrec -g "$(slurp)" -f "$target_file" >/dev/null 2>&1
		;;
	$selopnrec)
		echo "$target_file" >"$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		wl-screenrec -o "$(sel_output)" -f "$target_file" >/dev/null 2>&1
		;;
	$reccuropa)
		echo "$target_file" >"$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		wl-screenrec --audio -o "$(focussed_output)" -f "$target_file" >/dev/null 2>&1
		;;
	$recsela)
		echo "$target_file" >"$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		wl-screenrec --audio -g "$(slurp)" -f "$target_file" >/dev/null 2>&1
		;;
	$selopnreca)
		echo "$target_file" >"$mark_file"
		pkill -SIGRTMIN+4 i3status-rs
		wl-screenrec --audio -o "$(sel_output)" -f "$target_file" >/dev/null 2>&1
		;;
	esac
fi
