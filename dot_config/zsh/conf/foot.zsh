# Spawning new terminal instances in the current working directory
function osc7-pwd() {
    emulate -L zsh # also sets localoptions for us
    setopt extendedglob
    local LC_ALL=C
    printf '\e]7;file://%s%s\e\' $HOST ${PWD//(#m)([^@-Za-z&-;_~])/%${(l:2::0:)$(([##16]#MATCH))}}
}

function chpwd-osc7-pwd() {
    (( ZSH_SUBSHELL )) || osc7-pwd
}
add-zsh-hook -Uz chpwd chpwd-osc7-pwd

# Jumping between the prompts
precmd() {
    print -Pn "\e]133;A\e\\"
}


# Piping last command's output
function precmd {
    if ! builtin zle; then
        print -n "\e]133;D\e\\"
    fi
}

function preexec {
    print -n "\e]133;C\e\\"
}
