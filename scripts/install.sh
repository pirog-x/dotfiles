#!/bin/sh

scripts_home=~/.config/scripts

if ! [ -d $scripts_home ]; then
    mkdir $scripts_home
fi

cp -r battery  $scripts_home

