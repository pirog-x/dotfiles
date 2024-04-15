#!/bin/sh

rofi_theme=$HOME/.local/share/rofi/themes
rofi_config=$HOME/.config/rofi

if [! -d $rofi_config ]; then
    mkdir -p $rofi_config
fi

if [! -d $rofi_theme ]; then
    mkdir -p $rofi_theme
fi

cp rounded-gray-dark.rasi $rofi_theme
cp config.rasi $rofi_config

