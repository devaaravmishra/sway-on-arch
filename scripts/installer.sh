#!/bin/bash

echo -e "\n======> Installing Sway-On-Arch.\n"


# Copying config files to ~/.config/ dir
cp -frv ../.config/* ${HOME}/.config/

echo -e "\n======> Done Patching configs..."

echo -e "\n======> Setting Wallpaper!"

mkdir -p ${HOME}/Pictures

echo -e "\nGetting elegant wallpapers..."
cd ${HOME}/Pictures/
git clone https://gitlab.com/aaaravv/Wallpapers.git

echo -e "\nSway On Arch installed... Reboot system for changes to take effect!"
