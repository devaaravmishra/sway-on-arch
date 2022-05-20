#!/bin/bash
case $(wofi --conf=$HOME/.config/wofi/scripts/config --style=$HOME/.config/wofi/scripts/powermenu/power.css -d -w 3 --height=100 --location=center \
    << EOF | sed 's/^ *//'
 
 
 
EOF
) in
    "")
        systemctl poweroff
        ;;
    "")
        systemctl reboot
        ;;
    "")
        swaylock -f
        ;;
esac
