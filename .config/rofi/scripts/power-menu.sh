#!/bin/bash

# Power menu options
options=(
    "⏻  Shutdown"
    "  Reboot"
    "󰍁  Logout"
    "  Suspend"
    # "  Lock"
)

# Join options as newline-separated string
choices=$(printf "%s\n" "${options[@]}")

# Launch rofi-wayland dmenu
choice=$(echo -e "$choices" | rofi -dmenu -case-smart -p "Power Menu")

# Act on user choice
case "$choice" in
*Shutdown) systemctl poweroff ;;
*Reboot) systemctl reboot ;;
*Logout) hyprctl dispatch exit ;;
*Suspend) systemctl suspend ;;
*Lock) hyprlock ;;
esac
