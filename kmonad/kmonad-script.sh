#!/bin/zsh

STATE_FILE="$HOME/.config/kmonad/state"
LINUX_CONFIG="$HOME/.config/kmonad/linux.kbd"
MAC_CONFIG="$HOME/.config/kmonad/mac.kbd"


NUPHY_KEYBOARD="/dev/input/by-id/usb-CX_2.4G_Wireless_Receiver-event-kbd"
THINKPAD_KEYBOARD="$(find /dev/input/by-path/*kbd* | grep i8042)"

MAC="mac"
LINUX="linux"

startup() {
    run_linux
    echo $LINUX > $STATE_FILE
}

run_linux() {
    export KBD_DEV=$THINKPAD_KEYBOARD
    KBDCFG=$(envsubst < $LINUX_CONFIG)
    kmonad <(echo "$KBDCFG") &

    export KBD_DEV=$NUPHY_KEYBOARD
    KBDCFG=$(envsubst < $LINUX_CONFIG)
    kmonad <(echo "$KBDCFG") &
}

run_mac() {
    export KBD_DEV=$THINKPAD_KEYBOARD
    KBDCFG=$(envsubst < $MAC_CONFIG)
    kmonad <(echo "$KBDCFG") &

    export KBD_DEV=$NUPHY_KEYBOARD
    KBDCFG=$(envsubst < $MAC_CONFIG)
    kmonad <(echo "$KBDCFG") &
}

switch_state() {
    pkill kmonad
    if [ "$(cat $STATE_FILE 2>/dev/null)" = "mac" ]; then
        echo $LINUX > $STATE_FILE
        run_linux
    else
        echo $MAC > $STATE_FILE
        run_mac
    fi
}

get_state() {
    cat "$STATE_FILE"
}

case "$1" in
    --startup)
        startup
        ;;
    --toggle)
        switch_state
        ;;
    *)
        get_state
        ;;
esac

