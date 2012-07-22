[ -r ~/.local/xinitrc ] && exec /bin/sh ~/.local/xinitrc

perWindowLayoutD
setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -option grp:caps_toggle -variant ",winkeys" us,ru
setxkbmap -option grp_led:scroll

# Utils
firefox &
pidgin &
lxterminal &
audacious &

# Sound stuff
gnome-alsamixer &
pavucontrol &

exec i3 2>&1 >> ~/.i3/log
