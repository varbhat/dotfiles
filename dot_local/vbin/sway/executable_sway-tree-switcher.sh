#!/bin/bash
IFS=$'\n'

windows=($(swaymsg -t get_tree | jq -r 'recurse(.nodes[]?) | recurse(.floating_nodes[]?) | select(.type=="con"), select(.type=="floating_con") | select((.app_id != null) or .name != null) | {id, app_id, name} | .id, .app_id, .name'))
str=""
for ((i = 0; i < "${#windows[@]}"; i = i + 3)); do
	id="${windows[i]}"
	app_id="${windows[i + 1]}"
	name="${windows[i + 2]}"

	building_string="$id:"
	if [[ $app_id != "null" ]]; then
		building_string="$building_string $app_id"
	fi
	if [[ $name != "null" ]]; then
		building_string="$building_string : $name"
	fi
	str="$str$building_string\n"
done

selection=$(printf $str | fuzzel -d -p "Switch to a window")
[[ -z $selection ]] && exit
id=$(echo $selection | cut -d ":" -f1)
if [[ -z $id ]]; then
	exit
fi

swaymsg "[con_id=$id]" focus
exit
