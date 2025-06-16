if command -v starship >/dev/null; then
	eval "$(starship init zsh)"
else
	# colors here: https://unix.stackexchange.com/a/124409
	PROMPT=$'%F{%(#.red.105)%}%#%f %(?..%F{214}%K{%(?.000.052)} err %? %k%f )%F{245}%~%f %F{078}%n%f%F{245}@%f%F{132}%m%f %F{245}%D{%L:%M:%S}%f\n '
	RPROMPT=''

	setopt promptsubst
	PS1=$'%F{%(?.236.red)}${(r:$COLUMNS::\u2500:)}%f'$PS1
fi

