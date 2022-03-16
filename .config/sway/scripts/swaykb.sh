#!/bin/sh

sed -n '/Key bindings/,/Ctrl+Shift+r/p' ~/.config/sway/config | \
grep '#\|##\|bindsym\|^$' | \
sed -e 's/# //' -e 's/#//' -e 's/##//' -e 's/###//' -e 's/^[ \t]*//' | \
grep -v '#Key bindings' | \
yad --text-info --fore=#46d9ff --geometry=1200x800


