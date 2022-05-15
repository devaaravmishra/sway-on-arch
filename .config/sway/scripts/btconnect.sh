#!/bin/sh

#!/usr/bin/env bash

if [ "$1" == "--help" ]; then
    echo -e "\n\tThis script attempts to connect or disconnects to paired Bluetooth device."
    exit 0;
fi

var="$(bluetoothctl paired-devices | grep '' | cut -d' ' -f3- | nl -w2 -s': ' | fzf --prompt "bluetooth" )"

index="$(echo $var | grep '' | cut -d':' -f1)"

device="$(bluetoothctl paired-devices | grep '' | cut -d' ' -f2- | awk '{print $1}' | sed -n ${index}p)"

if bluetoothctl info "$device" | grep 'Connected: yes' -q; then
  bluetoothctl disconnect "$device" && info="$(bluetoothctl info ${device} | grep Name | cut -d':' -f2)" && notify-send "Disconnected from ${info}!"
else
  bluetoothctl connect "$device" && info="$(bluetoothctl info ${device} | grep Name | cut -d':' -f2)" && notify-send "Connected to ${info}!"
fi
