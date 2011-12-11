[ -r ~/.local/xinitrc ] && exec /bin/sh ~/.local/xinitrc

kbdd
setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -option grp:alt_shift_toggle -variant ",winkeys" us,ru
setxkbmap -option grp_led:scroll
xmodmap ~/.xmodmaprc
xbindkeys
xfce4-panel &
exec ck-launch-session openbox-session
