#!/bin/sh

if [ ! -d "~/.config/bspwm" ]; then
    mkdir ~/.config/bspwm
fi

cp bspwmrc ~/.config/bspwm
chmod +x ~/.config/bspwm

