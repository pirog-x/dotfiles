#!/bin/sh

if [ ! -d "~/.ssh" ]; then
    mkdir ~/.ssh
fi

cp ./config ~/.ssh

