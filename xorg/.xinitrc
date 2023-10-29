#!/usr/bin/bash

flameshot &
clipmenud &
picom &
dunst &

xsetroot -cursor_name left_ptr &

# hide the mouse coursor after 3 seconds of innactivity
unclutter -idle 3 &
xrdb .Xresources &
# Saving bspwm logs
exec bspwm > ~/.bspwm.log
