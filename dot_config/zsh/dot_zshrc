#set -x
export EDITOR="nvim"

# zsh completions
autoload -Uz compinit && compinit -d ~/.cache/.zcompdump-$ZSH_VERSION

# Use anticode for plugin management
# Bootstrap antidote if it doesn't exist
# https://getantidote.github.io
if [[ ! -d ~/.local/share/antidote ]]; then 
  mkdir -p ~/.local/share/antidote
  git clone --depth=1 https://github.com/mattmc3/antidote.git ~/.local/share/antidote
fi

# Load antidote
zstyle ':antidote:static' file "$HOME/.cache/.zsh_plugins.zsh"
source ~/.local/share/antidote/antidote.zsh
antidote load

# Source conf zsh files
for file in $ZDOTDIR/config.d/*.zsh; do
    [[ -f $file ]] && source $file
done

