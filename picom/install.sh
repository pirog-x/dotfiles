#!/bin/sh

picom_config=~/.config/picom

if ! [ -d $picom_config ]; then
    mkdir $picom_config
fi

cp picom.conf $picom_config

