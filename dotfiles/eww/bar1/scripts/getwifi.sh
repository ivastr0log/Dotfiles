#!/bin/sh

#symbol() {
#[ $(cat /sys/class/net/w*/operstate) = down ] && echo "󰖪 " && exit
#echo "󰤨 "
#}

symbol() {
    signal1=$(iwconfig wlan0 | grep "Link Quality=" | cut -c24-24)
    signal2=$(iwconfig wlan0 | grep "Link Quality=" | cut -c25-25)
    
    if [[ signal1 -eq "0" ]]; then
        echo "󰖪 "
    elif [[ $signal1 -eq "/" ]]; then
        echo "󰤯 "
    elif [[ ( $signal1 -le 1 ) && ( $signal2 -le 5) ]]; then
        echo "󰤟 "
    elif [[ $signal1 -le 3 ]]; then
        echo "󰤢 "
    elif [[ $signal1 -le 5 ]]; then
        echo "󰤢 "
    else
        echo "󰤨 "
    fi
}

name() {
nmcli | grep "^wlp" | sed 's/\ connected\ to\ /Connected to /g' | cut -d ':' -f2
}

[ "$1" = "icon" ] && symbol && exit
[ "$1" = "name" ] && name && exit
