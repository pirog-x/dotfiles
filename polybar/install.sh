#!/bin/sh

polybar_config=~/.config/polybar

if ! [ -d $polybar_config ]; then
    mkdir $polybar_config
fi

cp config.ini launch.sh $polybar_config

