#!/bin/sh

nvim_config=~/.config/nvim

if ! [ -d $nvim_config ]; then
    mkdir $nvim_config
fi

cp -r *.lua after lua plugin $nvim_config

