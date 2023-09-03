#!/usr/bin/env bash

FILE="$HOME/.config/polybar/blocks/scripts/rofi/colors.rasi"

# random accent color
COLORS=( '#00B19F' )
AC="${COLORS[$(( $RANDOM % 1 ))]}"
sed -i -e "s/ac: .*/ac:   ${AC}FF;/g" $FILE
sed -i -e "s/se: .*/se:   ${AC}40;/g" $FILE

rofi -no-config -no-lazy-grab -show drun -modi drun -theme ~/.config/polybar/blocks/scripts/rofi/launcher.rasi
