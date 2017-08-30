#!/bin/sh

SCREENSHOT="/tmp/screenshot.png"

scrot -z ${SCREENSHOT}

mogrify -scale 10% -scale 1000% ${SCREENSHOT}

#i3lock -i ${SCREENSHOT}
#
#sleep 120
#pgrep i3lock && xset dpms force off

DIM=$(xbacklight)
killall -SIGUSR1 dunst # pause
xbacklight -set 1
i3lock --nofork -i ${SCREENSHOT}
xbacklight -set ${DIM}
killall -SIGUSR2 dunst # resume
