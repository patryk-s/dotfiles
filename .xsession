setxkbmap -option terminate:ctrl_alt_bksp
xsetroot -solid "#000000"
eval $( ssh-agent -s  )
QT_QPA_PLATFORMTHEME="qt5ct"
exec /usr/bin/i3
