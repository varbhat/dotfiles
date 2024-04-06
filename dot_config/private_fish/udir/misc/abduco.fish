alias ab="abduco"
alias aba="abduco -a"
alias abc="abduco -c"
set -x ABDUCO_CMD fish

function __fish_abduco_complete_session
    abduco -l | awk '{print $NF}' | sed 1d
end

set -l abduco_commands -a -A -l -n -c -e -r -v
complete -c abduco -f # Disable file completions for the entire command
complete -c abduco -n "not __fish_seen_subcommand_from $abduco_commands" -a "-a -A -l -n -c -e -r -v"
complete -c abduco -n "__fish_seen_subcommand_from -a" -d "Attach to session" -a "(__fish_abduco_complete_session)"
complete -c abduco -n "__fish_seen_subcommand_from -c" -d "Attach to session" -a "(date +%s)"
