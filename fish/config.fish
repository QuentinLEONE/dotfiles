set -x EDITOR vim
fish_vi_key_bindings
set fish_cursor_insert
source ~/.config/fish/z.fish
# Start X at login
if status is-login
    if test -z "$DISPLAY" -a $XDG_VTNR = 1
        exec startx -- -keeptty
    end
end
