#!/bin/bash
case $(wofi -d -L 5 -l 3 -W 100 --location=center \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
   Poweroff
   Reboot
   Log off
 ⏾  Sleep
     Lock
EOF
) in
    "  Poweroff")
        systemctl poweroff
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "⏾  Sleep")
        systemctl suspend
        ;;
    "   Lock")
        swaylock -f
        ;;
    "  Log off")
        swaymsg exit
        ;;
esac
