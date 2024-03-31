local paste_cmd = "wl-paste"

function Set(t)
    local set = {}
    for _, v in pairs(t) do
        set[v] = true
    end
    return set
end

local safe_protos =
    Set {
    "http",
    "https",
    "ftp",
    "ftps",
    "rtmp",
    "rtmps",
    "rtmpe",
    "rtmpt",
    "rtmpts",
    "rtmpte",
    "data"
}

local function url_is_safe(url)
    local proto = type(url) == "string" and url:match("^(%a[%w+.-]*):") or nil
    local safe = proto and safe_protos[proto]
    if not safe then
        mp.msg.warn(("Ignoring potentially unsafe url: '%s'"):format(url))
    end
    return safe
end

mp.add_key_binding(
    "alt+p",
    "paste-clipboard",
    function()
        pcall(
            function()
                local f = assert(io.popen(paste_cmd, "r"))
                local s = assert(f:read("*a"))
                f:close()
                s = s:gsub("^%s+", ""):gsub("%s+$", ""):gsub("[\n\r]+", " ")
                if url_is_safe(s) then
                    mp.commandv("loadfile", s, "append-play")
                    mp.osd_message("URL appended: " .. s)
                    msg.info("URL appended: " .. s)
                end
            end
        )
    end
)

function run_shell_command(cmd)
    local handle = io.popen(cmd)
    local output = handle:read("*a")
    handle:close()
    return output
end

function show_shell_output(output)
    --mp.osd_message(output)
    --mp.msg.info(output)
end

mp.add_key_binding("Ctrl+c", "run-shell-command", function()
    local cmd = "ls -l"
    local output = run_shell_command(cmd)
    show_shell_output(output)
end)


mp.add_key_binding("alt+l","listen-yt",function()
    local cmd = "rofi -dmenu"
    local choice = run_shell_command(cmd)
    show_shell_output(choice)
end)