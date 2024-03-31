local mp = require "mp"
package.path = mp.command_native({"expand-path", "~~/script-modules/?.lua;"}) .. package.path
local uin = require "user-input-module"

-- special thanks to reload.lua (https://github.com/4e6/mpv-reload/)
function reload_resume()
    local playlist_pos = mp.get_property_number("playlist-pos")
    local reload_duration = mp.get_property_native("duration")
    local time_pos = mp.get_property("time-pos")

    mp.set_property_number("playlist-pos", playlist_pos)

    -- Tries to determine live stream vs. pre-recorded VOD. VOD has non-zero
    -- duration property. When reloading VOD, to keep the current time position
    -- we should provide offset from the start. Stream doesn't have fixed start.
    -- Decent choice would be to reload stream from it's current 'live' position.
    -- That's the reason we don't pass the offset when reloading streams.
    if reload_duration and reload_duration > 0 then
        local function seeker()
            mp.commandv("seek", time_pos, "absolute")
            mp.unregister_event(seeker)
        end
        mp.register_event("file-loaded", seeker)
    end
end

-- Choose Resolution
mp.add_key_binding(
    "alt+r",
    "choose-res",
    function()
        uin.get_user_input(
            function(format, err, flag)
                if not format then
                    return
                end
                if (format:find("^ ")) then
                    mp.set_property("ytdl-format", format)
                else
                    mp.set_property("ytdl-format", string.format("bestvideo[vcodec^=av01][height<=%s]+bestaudio", format))
                end
                mp.set_property("player-operation-mode", "pseudo-gui")
                reload_resume()
                mp.osd_message("reloaded...", 1)
            end,
            {
                request_text = "Enter Desired Resolution:",
                replace = true
            },
            "replace"
        )
    end
)

-- Switch to Audio Only Mode
mp.add_key_binding(
    "alt+a",
    "play-audio",
    function()
        mp.set_property("ytdl-format", "bestaudio")
        mp.set_property("player-operation-mode", "pseudo-gui")
        reload_resume()
        mp.osd_message("audio-only mode")
    end
)

-- Set Youtube Thumbnail when playing Audio
mp.add_key_binding(
    "alt+t",
    "thumbnailfetch",
    function()
        mp.osd_message("Fetching Thumbnail")
        --check if the video is from YouTube
        mpvpath = mp.get_property("path")
        yturl = mpvpath:gsub("([&?])list=[^&]+&?", "%1"):gsub("([&?])index=[^&]+&?", "%1")
        if (string.find(mpvpath, "youtube.com") or string.find(mpvpath, "youtu.be")) then
            tfetch =
                mp.command_native_async(
                {name = "subprocess", args = {"yt-dlp", "--get-thumbnail", yturl}, capture_stdout = true},
                function(success, result, err)
                    if (success == false) then
                        return
                    end
                    if (result) then
                        pcall(
                            function()
                                for tnailurl in string.gmatch(result.stdout, "[^\n]+") do
                                    local tnurl = tnailurl
                                    tnurl =
                                        tnurl:gsub("^%s+", ""):gsub("%s+$", ""):gsub("[\n\r]+", " "):gsub(
                                        "://",
                                        [[\://]]
                                    )
                                    mp.set_property("cover-art-files", tnurl)
                                    reload_resume()
                                    mp.osd_message("Thumbnail Fetched")
                                    break
                                end
                            end
                        )
                    end
                end
            )

            mp.add_timeout(
                15,
                function()
                    mp.abort_async_command(tfetch)
                end
            )
        end
    end
)

-- Clear Playlist
mp.add_key_binding(
    "alt+c",
    "playlist-clear",
    function()
        mp.commandv("playlist-clear")
        mp.osd_message("Playlist Cleared")
    end
)
