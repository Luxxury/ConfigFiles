#!/bin/bash

wallpaper=$(ls /home/plague/Pictures/Wallpapers | shuf | head -n 1)
wallpaper_loc="/home/plague/Pictures/Wallpapers/$wallpaper"
gsettings set org.gnome.desktop.background picture-uri-dark file://$wallpaper_loc
gsettings set org.gnome.desktop.background picture-uri file://$wallpaper_loc
