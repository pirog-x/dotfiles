#!/bin/sh

idea_config=~/.config/JetBrains

if ! [ -d $idea_config ]; then
    mkdir $idea_config
fi

cp ideavim/.ideavimrc ~
cp idea-settings/settings.zip $idea_config

