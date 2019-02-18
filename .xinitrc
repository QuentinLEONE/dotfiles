#!bin/sh
xcompmgr -c &
feh --bg-fill ~/.config/i3/explosion_shape_dark.jpg
setxkbmap -option compose:caps
exec i3
