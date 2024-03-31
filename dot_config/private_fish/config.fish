if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Enable vi keybindings 
fish_vi_key_bindings

set fish_greeting

# Prevent directories names from being shortened
set fish_prompt_pwd_dir_length 0

# FZF Tab completion on Ctrl+g
set fifc_keybinding \cg


# Source aliases
for i in $__fish_config_dir/udir/aliases/*.fish
    source $i
end

# Source abbreviations
for i in $__fish_config_dir/udir/abbrs/*.fish
    source $i
end

# Source functions
for i in $__fish_config_dir/udir/functions/*.fish
    source $i
end

# Create missing directories
set -l directories ~/space ~/space/downloads ~/.cache ~/.config ~/.xdgpath ~/.xdgpath/desktop ~/.xdgpath/documents ~/.xdgpath/music ~/.xdgpath/pictures ~/.xdgpath/publicshare ~/.xdgpath/templates ~/.xdgpath/videos ~/.xdgpath/pictures ~/.xdgpath/pictures/wallpapers
for dir in $directories
    test -d $dir || mkdir -p $dir
end


# Integrate with fish 
zoxide init fish | source
