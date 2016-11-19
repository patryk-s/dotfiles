setxkbmap -option terminate:ctrl_alt_bksp
xsetroot -solid "#000000"
export $(dbus-launch)
exec /usr/bin/i3
