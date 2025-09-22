#!/bin/env bash


choice=$(printf "\nLogout\nReboot\nShutdown" | rofi -dmenu)
case "$choice" in
#Lock) sh $HOME/bin/screen-lock.sh ;;
  Logout) pkill -KILL -u "$USER" ;;
#Suspend) systemctl suspend && sh $HOME/bin/screen-lock.sh ;;
  Reboot) systemctl reboot ;;
  Shutdown) systemctl poweroff ;;
esac
