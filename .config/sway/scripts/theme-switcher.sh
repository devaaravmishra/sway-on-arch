#!/bin/sh

#!/usr/bin/env bash
current_waybar_theme="$(grep '@import' ~/.config/waybar/style.css | cut -d'/' -f2- | cut -d'.' -f1)"
current_sway_theme="$(grep 'colorschemes' ~/.config/sway/config | cut -d'/' -f2- | cut -d'/' -f4 | cut -d'.' -f1)"

if [ "$1" == "--help" ] || [ "$1" == "-h" ]; then
    echo -e "\n\t--This script can switch color schemes with given choice of colors your configs contains."
    echo -e "\n\tCurrently supports"
    echo -e "\n\t1.Alacritty"
    echo -e "\n\t2.Waybar"
    echo -e "\n\n\t--NOTE"
    echo -e "\n\t-> Keep colorschemes for alacritty within alacritty.yml."
    echo -e "\n\t-> Keep colorschemes for waybar within ~/.config/waybar/colorschemes/ & import it in ~/.config/waybar/style.css file."
    echo -e	"\n\t - Refer https://github.com/mnussbaum/base16-waybar for more details."
    
    exit 0;
fi

selected="$(ls ~/.config/waybar/colorschemes |  cut -d' ' -f11- | cut -d'.' -f1 | fzf --prompt " (applied: $current_waybar_theme) select theme:  ")"

if [ "$selected" == "" ];
then
	echo 'Selection terminated, No theme applied!'
	exit 0;
else
	sed -i "s/${current_waybar_theme}/${selected}/" ~/.config/waybar/style.css && \
	sed -i "/colors:/c\colors: *${selected}" ~/.config/alacritty/alacritty.yml && \
	sed -i "s/${current_sway_theme}/${selected}/" ~/.config/sway/config && sway reload && \
	notify-send "${selected^} theme applied!"
	exit 0;
fi
