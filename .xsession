setxkbmap -option terminate:ctrl_alt_bksp
xsetroot -solid "#000000"
eval $( ssh-agent -s  )
exec /usr/bin/i3
