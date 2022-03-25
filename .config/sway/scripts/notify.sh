#!/usr/bin/env sh

notifyMuted() {
        volume="$1"
        icon="~/.config/sway/icons/mute.png"
        dunstify -h string:x-canonical-private-synchronous:audio "Muted" -h int:value:"$volume" -t 1500 --icon $icon
}

notifyAudio() {
        volume="$1"
        ponymix is-muted && notifyMuted "$volume" && return
        
        if [ $volume -eq 0 ]; then
                notifyMuted "$volume"
        elif [ $volume -le 30 ]; then
                icon="~/.config/sway/icons/sound.png"
                dunstify    -h string:x-canonical-private-synchronous:audio "Volume: "$volume%"" -h int:value:"$volume" -t 1500 --icon $icon
        elif [ $volume -le 70 ]; then
                icon="~/.config/sway/icons/sound.png"
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: "$volume%"" -h int:value:"$volume" -t 1500 --icon $icon
        else
                icon="~/.config/sway/icons/sound.png"
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: "$volume%"" -h int:value:"$volume" -t 1500 --icon $icon
        fi
}

notifyBrightness() {
        brightness="$1"
        if [ $brightness -eq 0 ]; then
        		icon="~/.config/sway/icons/brightness.png"
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: $brightness%" -h int:value:"$brightness" -t 1500 --icon $icon
        elif [ $brightness -le 30 ]; then
        		icon="~/.config/sway/icons/brightness.png"
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: $brightness%" -h int:value:"$brightness" -t 1500 --icon $icon
        elif [ $brightness -le 70 ]; then
        icon="~/.config/sway/icons/brightness.png"
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: $brightness%" -h int:value:"$brightness" -t 1500 --icon $icon
        else
        		icon="~/.config/sway/icons/brightness.png"
                dunstify -h string:x-canonical-private-synchronous:brightness "Brightness: $brightness%" -h int:value:"$brightness" -t 1500 --icon $icon
        fi
}


input=`cat /dev/stdin`

case "$1" in
        muted)
                volume=`ponymix get-volume`
                if [ "$input" -eq 0 ]
                then
                        notifyAudio "$volume"
                else
                        notifyMuted "$volume"
                fi
                ;;
        audio)
                notifyAudio "$input"
                ;;
        brightness)
                notifyBrightness "$input"
                ;;

        *)
                echo "Not the right arguments"
                echo "$1"
                exit 2
esac

