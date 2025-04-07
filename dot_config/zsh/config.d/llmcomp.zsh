# llm -s "Return 4 executable command line suggestions or answers, no formatting. Output must be fzf compatible results seperated by new line." --save cli_help
llm_cli_help() {
  local selected
  selected=$(llm -t cli_help $BUFFER | fzf --layout=reverse --height=40%)
  if [[ -n $selected ]]; then
    BUFFER="$selected "
  fi
  zle reset-prompt
  zle end-of-line
}
zle -N llm_cli_help
bindkey '^h' llm_cli_help
bindkey -M viins '^h' llm_cli_help
