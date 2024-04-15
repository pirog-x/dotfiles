#!/bin/sh

config_path=~/.config/flameshot
save_path=~/Pictures/flameshot

if [ ! -d $config_path ]; then
    mkdir $config_path
fi

if [ ! -d $save_path ]; then
    mkdir $save_path
fi

cp flameshot.ini $config_path

