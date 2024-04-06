local mp = require("mp")
package.path = mp.command_native({ "expand-path", "~~/script-modules/?.lua;" }) .. package.path
local uin = require("user-input-module")

-- Choose Resolution
mp.add_key_binding("alt+r", "choose-res", function()
	uin.get_user_input(function(format, err, flag)
		if not format then
			return
		end
		if format:find("^ ") then
			mp.set_property("ytdl-format", format)
		else
			mp.set_property("ytdl-format", string.format("bestvideo[height<=%s]+bestaudio", format))
		end
		mp.set_property("player-operation-mode", "pseudo-gui")
	end, {
		request_text = "Enter Desired Resolution:",
		replace = true,
	}, "replace")
end)

-- Switch to Audio Only Mode
mp.add_key_binding("alt+a", "play-audio", function()
	mp.set_property("ytdl-format", "bestaudio")
	mp.set_property("player-operation-mode", "pseudo-gui")
	reload_resume()
	mp.osd_message("audio-only mode")
end)

-- Clear Playlist
mp.add_key_binding("alt+c", "playlist-clear", function()
	mp.commandv("playlist-clear")
	mp.osd_message("Playlist Cleared")
end)
