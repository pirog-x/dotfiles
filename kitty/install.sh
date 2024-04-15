#!/bin/sh

kitty_config=~/.config/kitty

if ! [ -d $kitty_config ]; then
    mkdir $kitty_config
fi

cp kitty.conf ~

