export EDITOR="nvim"
export TERMINAL="foot"
export GOPATH=~/.local/share/gopath
export VOLTA_HOME=~/.local/share/volta
export XDG_DATA_DIRS="$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share"

path+=($GOPATH/bin)
path+=($HOME/.cargo/bin)
path+=($HOME/.local/share/nvim/mason/bin)
path+=($VOLTA_HOME/bin)
path+=($HOME/.local/bin)
# https://unix.stackexchange.com/a/480799
path+=($HOME/.local/vbin{,/**/*(N/)})

if [[ -z $DISPLAY ]] && (($EUID != 0)) && [[ $(tty) = /dev/tty1 ]] && command -v scroll >/dev/null; then
	# export XDG_CURRENT_DESKTOP
	export XDG_CURRENT_DESKTOP=scroll

	# wayland
	export QT_QPA_PLATFORM=wayland
	export _JAVA_AWT_WM_NONREPARENTING=1
	export MOZ_ENABLE_WAYLAND=1
	export XCURSOR_THEME=Adwaita

	# enable file portal for gtk apps
	export GTK_USE_PORTAL=1

	# use qt6ct to theme QT
	export QT_QPA_PLATFORMTHEME=qt6ct

	# start sway
	dbus-run-session scroll 2>&1 && exit
fi
