#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi


echo -e "\n======> Installing Sway-On-Arch.\n"


pacman -Sy $(<packages.txt)
yay -S swaylock-effects
echo -e "\n======> Completed installing packages."

# Copying config files to ~/.config/ dir
cp -frv \
	../alacritty \
	../sway \
	../dunst \
	../swaylock \
	../waybar \
	../wofi \
	${HOME}/.config/

echo -e "\n======> Done Patching configs..."

echo -e "\n======> Setting Wallpaper for home & lockscreen..."

mkdir -p ${HOME}/Pictures

cp -frv \
	../Wallpapers \
	${HOME}/Pictures/

echo -e "\nSway On Arch installed... Reboot now for changes to take effect!"
