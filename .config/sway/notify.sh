#!/usr/bin/env sh

notifyMuted() {
        volume="$1"
        icon="~/.config/sway/mute.png"
        dunstify -h string:x-canonical-private-synchronous:audio "Muted" -h int:value:"$volume" -t 1500 --icon $icon
}

notifyAudio() {
        volume="$1"
        ponymix is-muted && notifyMuted "$volume" && return
        
        if [ $volume -eq 0 ]; then
                notifyMuted "$volume"
        elif [ $volume -le 30 ]; then
                icon="~/.config/sway/sound.png"
                dunstify    -h string:x-canonical-private-synchronous:audio "Volume: "$volume%"" -h int:value:"$volume" -t 1500 --icon $icon
        elif [ $volume -le 70 ]; then
                icon="~/.config/sway/sound.png"
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: "$volume%"" -h int:value:"$volume" -t 1500 --icon $icon
        else
                icon="~/.config/sway/sound.png"
                dunstify -h string:x-canonical-private-synchronous:audio "Volume: "$volume%"" -h int:value:"$volume" -t 1500 --icon $icon
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
