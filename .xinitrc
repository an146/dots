kbdd
xmodmap ~/.xmodmaprc
setxkbmap -option terminate:ctrl_alt_bksp
setxkbmap -option grp:alt_shift_toggle -variant ",winkeys" us,ru
setxkbmap -option grp_led:scroll
exec ck-launch-session gnome-session
