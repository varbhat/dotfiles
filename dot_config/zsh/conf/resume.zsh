# Allow Ctrl-z to toggle between suspend and resume
function resumectrlz {
  fg
  zle push-input
  BUFFER=""
  zle accept-line
}
zle -N resumectrlz
bindkey "^Z" resumectrlz
bindkey -M viins "^Z" resumectrlz
