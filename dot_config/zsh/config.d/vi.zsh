autoload -z edit-command-line
zle -N edit-command-line
bindkey "^v" edit-command-line
bindkey -M viins "^v" edit-command-line

bindkey "^A" vi-beginning-of-line
bindkey "^E" vi-end-of-line

# Fix history-search-multi-word in vi mode
function hsmw() {
  zle -N history-search-multi-word
  bindkey -M viins "^R" history-search-multi-word
}
zvm_after_init_commands+=(hsmw)
