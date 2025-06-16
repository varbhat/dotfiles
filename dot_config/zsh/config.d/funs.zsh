cl() {
	cd "$@" && ls -a
}

mkcd() {
	mkdir -p "$@" && cd "$@"
}

# run function
run() {
    setsid "$@" &> /dev/null
}

n() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

getMime() {
  file -b --mime-type "$@"
}

# Lists the FS as Tree and pages it with bat
# It also emits OSC 8 (Hyperlink) to the Terminal
# If you don't want icons pass, --icons=never as arg,
# like this: lst --icons=never
lst() {
  eza -T --icons=always --hyperlink --color=always "$@" | bat --color=always --style=plain
}

# Change Directory using zoxide
# and List the Directory
zl() {
  z "$@" && ls -a
}
