#!/bin/sh
# Sourced from https://unix.stackexchange.com/q/753211

# Function: audiopw_get_audio_devices
# Description: Get all audio devices as a JSON array of objects
function audiopw_get_audio_devices() {
	pw-dump | jq -r '.[] | select(.type == "PipeWire:Interface:Device" and .info.props."media.class" == "Audio/Device")'
}

# Function: audiopw_get_object_by_id
# Description: Get a object by object ID as a JSON object
# Parameters:
#   - $1: The object ID of the device, node, module, factory, port, link or whatever
function audiopw_get_object_by_id() {
	local object_id="$1"
	pw-dump | jq -r ".[] | select(.id == $object_id)"
}

# Function: audiopw_get_device_by_name
# Description: Get a device by name as a JSON object
# Parameters:
#   - $1: The name of the device
function audiopw_get_device_by_name() {
	local device_name="$1"
	pw-dump | jq -r ".[] | select(.info.props.\"device.name\" == \"$device_name\")"
}

# Function: audiopw_get_active_profiles
# Description: Get active profiles for a device by object ID as a JSON array of objects
# Parameters:
#   - $1: The object ID of the device
function audiopw_get_active_profiles() {
	local device_object_id="$1"
	pw-dump | jq -r ".[] | select(.id == $device_object_id) | .info.params.Profile"
}

# Function: audiopw_get_active_routes
# Description: Get active routes for all nodes of the active profile(s) of a device by object ID as a JSON array of objects
# Parameters:
#   - $1: The object ID of the device
function audiopw_get_active_routes() {
	local device_object_id="$1"
	pw-dump | jq -r ".[] | select(.id == $device_object_id) | .info.params.Route"
}

# Function: audiopw_get_all_profiles
# Description: Get all profiles for a device by object ID as a JSON array of objects
# Parameters:
#   - $1: The object ID of the device
function audiopw_get_all_profiles() {
	local device_object_id="$1"
	pw-dump | jq -r ".[] | select(.id == $device_object_id) | .info.params.EnumProfile"
}

# Function: audiopw_get_all_routes
# Description: Get all routes for all nodes of a device by object ID as a JSON array of objects
# Parameters:
#   - $1: The object ID of the device
function audiopw_get_all_routes() {
	local device_object_id="$1"
	pw-dump | jq -r ".[] | select(.id == $device_object_id) | .info.params.EnumRoute"
}

# Function: audiopw_get_nodes_for_device_by_id
# Description: Get all nodes for a device by object ID as a JSON array of objects
# Parameters:
#   - $1: The object ID of the device
function audiopw_get_nodes_for_device_by_id() {
	local device_object_id="$1"
	pw-dump | jq -r --argjson dev_id "$device_object_id" '[.[] | select(.type == "PipeWire:Interface:Node" and .info.props."device.id" == $dev_id)]'
	#pw-dump | jq -r '[.[] | select(.type == "PipeWire:Interface:Node" and .info.props."device.id" == "'"$device_object_id"'")]'
}

# Function: audiopw_set_route
# Description: Set route for a given node by object ID
# Parameters:
#   - $1: The object ID of the node
#   - $2: The index of the new route
function audiopw_set_route() {
	local node_object_id="$1"
	local route_index="$2"

	local node=$(audiopw_get_object_by_id $node_object_id)
	local device_object_id=$(echo "$node" | jq -r '.info.props["device.id"]')

	# Get available route "templates" for the device's active profile(s)
	routes=$(audiopw_get_all_routes $device_object_id)

	# Get the first route template (edit: using the fourth because the first 3 are for input rather than output)
	first_route_template=$(echo "$routes" | jq '.[3]')

	# Create a Routes entry for the given node based on the given template and save as new JSON object
	route_to_set=$(echo "$first_route_template")

	# Set the "route.hw-mute" property to false beacuase I have no clu how to find out the right value
	route_to_set=$(echo "$route_to_set" | jq '.info += ["route.hw-mute", "true"]')

	# Set the "route.hw-volume" property to false beacuase I have no clu how to find out the right value
	route_to_set=$(echo "$route_to_set" | jq '.info += ["route.hw-volume", "true"]')

	# Calculate the length of the "info" array and set the first element accordingly
	info_length=$(echo "$route_to_set" | jq '.info | length')
	route_to_set=$(echo "$route_to_set" | jq ".info[0] = ($info_length - 1) / 2")

	# Get the index of the node of which we want to change the route
	node_index=$(echo "$node" | jq -r '.info.props["card.profile.device"]')

	# Set device property
	route_to_set=$(echo "$route_to_set" | jq ". + { \"device\": $node_index }")

	# Gather values for the properties of the "props" section
	mute=$(echo "$node" | jq -r '.info.params.Props[0].mute')
	channel_volumes=$(echo "$node" | jq -r '.info.params.Props[0].channelVolumes')
	volume_base=$(echo "$node" | jq -r '.info.params.Props[0].volume')
	volume_step=0.000015 # No clue how to get the correct value
	channel_map=$(echo "$node" | jq -r '.info.params.Props[0].channelMap')
	soft_volumes=$(echo "$node" | jq -r '.info.params.Props[0].softVolumes')
	latency_offset=$(echo "$node" | jq -r '.info.params.Props[1].latencyOffsetNsec')

	# Set the properties in the "props" section
	route_to_set=$(
		echo "$route_to_set" | jq "
        .props += {
            \"mute\": $mute,
            \"channelVolumes\": $channel_volumes,
            \"volumeBase\": $volume_base,
            \"volumeStep\": $volume_step,
            \"channelMap\": $channel_map,
            \"softVolumes\": $soft_volumes,
            \"latencyOffsetNsec\": $latency_offset
        }"
	)

	# Get active profile
	profiles=$(audiopw_get_active_profiles $device_object_id)
	first_active_profile=$(echo "$profiles" | jq '.[0]')

	# Get profile index
	first_active_profile_index=$(echo "$first_active_profile" | jq -r '.index')
	route_to_set=$(echo "$route_to_set" | jq ". + { \"profile\": $first_active_profile_index }")

	# Add the "save" property to the "route_to_set" object
	route_to_set=$(echo "$route_to_set" | jq '. + { "save": false }')

	# Get active routes
	old_active_routes="$(audiopw_get_active_routes $device_object_id)"

	# Get route index
	route_index=$(echo "$old_active_routes" | jq -r "map(.device == $node_index) | index(true)")

	# Create a new routes array where the route we want to set replaces the old one
	updated_active_routes=$(echo "$old_active_routes" | jq ".[$route_index] = $route_to_set")

	# Check diff between old and new routes array
	#file1=/tmp/updated_active_routes && file2=/tmp/old_active_routes && echo "$updated_active_routes" > "$file1" && echo "$old_active_routes" > "$file2" && meld "$file1" "$file2" ; rm "$file1" "$file2"

	# Set the updated routes
	pw-cli set-param $device_object_id Route "$updated_active_routes"
}

# Function: audiopw_set_profile
# Description: Set route for a given device by object ID
# Parameters:
#   - $1: The object ID of the device
#   - $2: The index of the new profile
function audiopw_set_profile() {
	local device_object_id="$1"
	local profile_index="$2"

	# Get available profile "templates" for device with object ID 78
	profiles="$(audiopw_get_all_profiles $device_object_id)"

	# Get desired profile template
	profile_template=$(echo "$profiles" | jq ".[] | select(.index == $PROFILE_INDEX)")

	# Add the "save" property and save as new JSON object
	profile_to_set=$(echo "$profile_template" | jq '. + { "save": false }')

	# Set the new profile(s)
	pw-cli set-param $device_object_id Profile "[ $profile_to_set ]"
}

# Example usage:
# audiopw_get_audio_devices
# audiopw_get_object_by_id 78
# audiopw_get_device_by_name alsa_card.pci-0000_00_1f.3
# audiopw_get_active_profiles 78
# audiopw_get_active_routes 78
# audiopw_get_all_profiles 78
# audiopw_get_all_routes 78
# audiopw_get_nodes_for_device_by_id 78
# audiopw_set_profile 78 1
# audiopw_set_route 45 0
