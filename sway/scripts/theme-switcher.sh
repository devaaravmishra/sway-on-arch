#!/bin/sh

#!/usr/bin/env bash

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

selected="$(printf "%s\n" "Alacritty" "Waybar" | fzf --prompt "Select from above list to change theme for...")"

if [ "$selected" == "Waybar" ];
then
	new_theme="$(ls ~/.config/waybar/colorschemes |  cut -d' ' -f11- | cut -d'.' -f1 | fzf --prompt "Select Theme ")"
	if [ -n "$new_theme" ];
	then
		current_theme="$(grep '@import' ~/.config/waybar/style.css | cut -d'/' -f2- | cut -d'.' -f1)"
		sed -i "s/${current_theme}/${new_theme}/" ~/.config/waybar/style.css && sway reload && \
		echo "$new_theme theme applied to $selected!" && \
		notify-send "$new_theme theme applied to $selected!"
	else
		echo 'Selection terminated, No theme applied!'
		exit 0;
	fi
else
	new_theme="$(grep '&' ~/.config/alacritty/alacritty.yml | cut -d'&' -f2- | fzf --prompt "Select Theme ")"
	if [ -n "$new_theme" ];
	then
		sed -i "/colors:/c\colors: *${new_theme}" ~/.config/alacritty/alacritty.yml && \
		echo "${new_theme} theme applied to ${selected}!" && \
		notify-send "${new_theme} theme applied to ${selected}!"
	else
		echo 'Selection terminated, No theme applied!'
		exit 0;
	fi	
fi
