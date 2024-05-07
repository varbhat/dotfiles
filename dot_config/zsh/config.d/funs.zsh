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

# lf integration
n() {
	tmp="$(mktemp)"
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

getMime() {
  file -b --mime-type "$@"
}

# Lists the FS as Tree and pages it with bat
# It also emits OSC 8 (Hyperlink) to the Terminal
lst() {
  eza -T --color="always" "$@" | bat --color="always" --style=plain
}

# Change Directory using zoxide
# and List the Directory
zl() {
  z "$@" && ls -a
}
