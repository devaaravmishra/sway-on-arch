#!/bin/bash
case $(wofi -d -L 6 -l 3 -W 100 --location=center \
    -D dynamic_lines=true << EOF | sed 's/^ *//'
    Poweroff
    Reboot
  﫼  Log off
  鈴  Sleep
     Lock
  ﰸ   Cancel
EOF
) in
    "  Poweroff")
        systemctl poweroff
        ;;
    "  Reboot")
        systemctl reboot
        ;;
    "鈴  Sleep")
        systemctl suspend
        ;;
    "   Lock")
        swaylock -f
        ;;
    "﫼  Log off")
        swaymsg exit
        ;;
esac
