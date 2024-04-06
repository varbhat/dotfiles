--[[
    shuffles the playlist and moves the currently playing file to the start of the playlist
    available at: https://github.com/CogentRedTester/mpv-scripts
]]
--

mp.add_key_binding(";", "playlist-shuffle", function()
	mp.command("playlist-shuffle")
	local pos = mp.get_property_number("playlist-pos")
	mp.commandv("playlist-move", pos, 0)
	mp.osd_message("playlist shuffled")
end)
