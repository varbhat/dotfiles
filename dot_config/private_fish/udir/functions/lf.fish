function n --wraps="lf" --description="lf - Terminal file manager (changing directory on exit)"
    set -l lflastdir (mktemp)
    command lf -last-dir-path=$lflastdir $argv
    cd "$(cat $lflastdir)"
    rm $lflastdir
end
