#!/bin/bash

sleep 0.1

WALLPAPER=$(awww query | sed -n 's/.*image: \(.*\)$/\1/p')

wal -i $WALLPAPER -e -n -s -t

matugen image $WALLPAPER --source-color-index 0
ln -sf ~/.cache/wal/colors-kitty.conf ~/.config/kitty/16-colors.conf
~/.config/matugen/papirus-folders/change-icons.sh
