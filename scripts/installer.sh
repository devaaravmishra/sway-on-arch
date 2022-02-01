#!/bin/bash

# Requires sudo
if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
        exit
fi


echo -e "\n======> Installing AM-OS.\n"


pacman -Sy --needed $(<pkg/packages.txt)
echo -e "\n======> Completed installing packages."

# Copying config files to ~/.config/ dir
mkdir -p ${HOME}/.config
cp -frv \
	../alacritty \
	../sway \
	../dunst \
	../swaylock \
	../waybar \
	../wofi \
	../../.config/

echo -e "\n======> Done Patching configs..."

echo -e "\n======> Setting Wallpaper for home & lockscreen..."

cp -frv \
	../Wallpapers \
	../../Pictures/

echo -e "\nSway On Arch installed... Reboot now for changes to take effect!"
