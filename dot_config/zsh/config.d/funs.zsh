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
