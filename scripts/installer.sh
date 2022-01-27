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
cp -frv \
	../alacritty \
	../sway \
	../dunst \
	../swaylock \
	../waybar \
	../wofi \
	../../.config/

echo -e "\n======> Placed configs to thier respective dir..."

echo -e "\nAM-OS installed... Reboot now for changes to take effect!"