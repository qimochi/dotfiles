wal-fill() {
    wal -n -i "$@"
    feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
}

if [[ $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
        exec fish
fi

jfetch
PS1='\W \$ '
