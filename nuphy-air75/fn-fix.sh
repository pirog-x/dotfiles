#!/bin/sh

if [ ! $(id -u) -e 0 ]; then
    echo "Required root user!"
    sudo -s
fi

echo 'options hid_apple fnmode=0' >> /etc/modprobe.d/hid_apple.conf

