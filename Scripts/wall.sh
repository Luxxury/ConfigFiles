#!/bin/bash

if [ $1 = "-s" ]
then	
	wallpaper=$(ls /home/plague/Pictures/Wallpapers | shuf | head -n 1)
	wallpaper_loc="/home/plague/Pictures/Wallpapers/$wallpaper"
else
	wallpaper_loc=$1
fi
ln -f $wallpaper_loc ~/.config/sway/wall
kill $(pidof swaybg)
swaybg -i $wallpaper_loc -m fill &!
