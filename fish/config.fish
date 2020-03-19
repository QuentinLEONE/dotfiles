set -x EDITOR vim
set fish_cursor_insert
source ~/.config/fish/z.fish

if status is-login
	if test -z "$DISPLAY" -a $XDG_VTNR = 1
		exec startx -- -keeptty
	end
end
