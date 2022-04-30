#!/bin/bash
current_workspace=$(swaymsg -pt get_workspaces | grep "(focused)" | cut -d " " -f 2)
prev_workspace=$(($current_workspace - 1 % 10))
if [ $(($prev_workspace)) == 0 ]; then
    export prev_workspace=10
fi
swaymsg workspace $prev_workspace
