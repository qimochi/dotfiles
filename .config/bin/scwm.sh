#!/bin/sh

# kill wm session with Ctrl + Alt + Backspace
# setxkbmap -option terminate:ctrl_alt_bksp

xrdb -merge /home/xx/.Xresources
xset b off
xset r rate 250 25
nitrogen --restore &
bash ~/.config/polybar/launch3.sh &
xsetroot -cursor_name left_ptr
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# startup programs, the & means background it
dunst & # notification daemon
#sxhkd & # keyboard shortcut daemon
#xautolock -time 10 -locker "slock" & 
picom &
VBoxClient --clipboard &
mpd &

# start cwm
exec cwm

