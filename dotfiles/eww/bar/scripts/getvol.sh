#!/bin/sh


if command -v pamixer &>/dev/null; then
    if [ true == $(pamixer --get-mute) ]; then
        echo "󰖁 "
        exit
    else
        volume=$(pamixer --get-volume)
        if [[ volume -le "30" ]]; then
            echo " "
        elif [[ volume -le "60" ]]; then
            echo " "
        else
            echo " "
        fi
    fi
else
    amixer -D pulse sget Master | awk -F '[^0-9]+' '/Left:/{print $3}'
fi
