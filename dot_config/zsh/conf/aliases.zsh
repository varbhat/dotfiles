alias v='nvim'
alias barevim='NVIM_APPNAME=barevim nvim'
alias vim='barevim'

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias pastebin="curl -F'file=@-' https://0x0.st"
alias g='git'
alias lg='lazygit'
alias chx='chmod +x'

if command -v eza >/dev/null; then
  alias ls='eza --icons=auto --hyperlink'
else
  alias ls='ls --color=auto'
fi

# flatpak aliases
if command -v eza >/dev/null; then
  alias fin='flatpak install flathub --user'
  alias fun='flatpak uninstall'
  alias fundelete='flatpak uninstall --delete-data'
  alias fclean='flatpak uninstall --unused --delete-data'
  alias fupdate='flatpak update'
fi
