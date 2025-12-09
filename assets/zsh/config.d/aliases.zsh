alias v='nvim'
alias barevim='NVIM_APPNAME=barevim nvim'
alias vim='barevim'

if [[ $UID == 0 || $EUID == 0 ]]; then
   # root
   export NVIM_APPNAME=barevim
   alias barevim='NVIM_APPNAME=barevim nvim'
   alias v='NVIM_APPNAME=barevim nvim'
   alias vim='NVIM_APPNAME=barevim nvim'
fi

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias pastebin="curl -F'file=@-' https://0x0.st"
alias g='git'
alias lg='lazygit'
alias ldo='lazydocker'
alias chx='chmod +x'

alias aget='aria2c'

alias pbat='bat --color=always --style=plain'

if command -v eza >/dev/null; then
  alias ls='eza --icons=auto --hyperlink'
else
  alias ls='ls --color=auto'
fi

alias lsa='ls -a'
# See funs.zsh for lst fn
alias lsta='lst -a'

# flatpak aliases
if command -v flatpak >/dev/null; then
  alias fin='flatpak install flathub --user'
  alias flathub='flatpak remote-add --user --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo'
  alias fun='flatpak uninstall'
  alias fundelete='flatpak uninstall --delete-data'
  alias fclean='flatpak uninstall --unused --delete-data'
  alias fupdate='flatpak update'
fi
