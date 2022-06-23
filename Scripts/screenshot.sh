#!/bin/bash

fullscreen() {
	filename=~/Pictures/Screenshots/$(date +%Y%m%d_%H:%M:%S_Fullscreen).png
	grim $filename
	bat $filename | wl-copy
	}

selecting() {
	filename=~/Pictures/Screenshots/$(date +%Y%m%d_%H:%M:%S_Selected).png
	grim -g "$(slurp)" $filename
	bat $filename | wl-copy
	}

case $1 in
	-f)fullscreen;;
	-s)selecting;;
esac
