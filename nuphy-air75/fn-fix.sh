#!/bin/bash

sudo -s
echo 'options hid_apple fnmode=0' >> /etc/modprobe.d/hid_apple.conf
