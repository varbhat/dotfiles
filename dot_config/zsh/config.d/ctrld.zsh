# make ctrl-d exit zsh on partial command line
exit_zsh() { exit }
zle -N exit_zsh
bindkey '^D' exit_zsh
bindkey -M viins '^D' exit_zsh 
