#!/usr/bin/env sh
venturedas32_id="$(pw-dump | jq -r ".[] | select(.info.props.\"device.description\" == \"VENTURE-DAS-32\")" | jq ".id")"
familyspeaker_id="$(pw-dump | jq -r ".[] | select(.info.props.\"device.description\" == \"Family 17h/19h HD Audio Controller\")" | jq ".id")"

venturedas32_active_profile="$(pw-dump -N | jq -r ".[] | select(.id == ${venturedas32_id}) | .info.params.Profile | .[].name")"
familyspeaker_active_profile="$(pw-dump -N | jq -r ".[] | select(.id == ${familyspeaker_id}) | .info.params.Profile | .[].name")"

if [[ "${venturedas32_active_profile}" == "off" ]]; then
	wpctl set-profile "${venturedas32_id}" 1
	wpctl set-profile "${familyspeaker_id}" 0
elif [[ "${familyspeaker_active_profile}" == "off" ]]; then
	wpctl set-profile "${familyspeaker_id}" 1
	wpctl set-profile "${venturedas32_id}" 0
fi
