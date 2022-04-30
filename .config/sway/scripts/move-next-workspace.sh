#!/bin/bash
current_workspace=$(swaymsg -pt get_workspaces | grep "(focused)" | cut -d " " -f 2)
echo $current_workspace
next_workspace=$((($current_workspace + 1) % 11))
if [ $(($next_workspace)) == 0 ]; then
    export next_workspace=1
fi
swaymsg move container to workspace $next_workspace
swaymsg workspace $next_workspace
