#!/bin/bash

echo -e "\n======> Installing Sway-On-Arch.\n"


# Copying config files to ~/.config/ dir
cp -frv ../.config/ \
${HOME}/

echo -e "\n======> Done Patching configs..."

echo -e "\n======> Setting Wallpaper!"

mkdir -p ${HOME}/Pictures

cp -frv \
	../Wallpapers \
	${HOME}/Pictures/

echo -e "\nSway On Arch installed... Reboot now for changes to take effect!"
