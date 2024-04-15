#!/bin/sh

mpv_config=~/.config/mpv


if [ ! -d $mpv_config ]; then
    mkdir -p $mpv_config
fi

cp mpv.conf $mpv_config

