#! /bin/bash

bat=$(cat /sys/class/power_supply/BAT0/capacity)
online=$(cat /sys/class/power_supply/AC/online)

while [[ true ]]; do
    if [ $bat -le 10 -a $online -eq 0 ]; then
        dunstify "Battery is low" -u critical -r 8342 -i \
            /usr/share/icons/Adwaita/32x32/legacy/battery-caution-charging-symbolic.symbolic.png
    fi

    sleep 30
    bat=$(cat /sys/class/power_supply/BAT0/capacity)
    online=$(cat /sys/class/power_supply/AC/online)
done
