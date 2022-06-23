#!/bin/bash

barnow=$(gsettings get org.gnome.shell.extensions.user-theme name)
#echo $barnow

if [ $barnow = "'theobar'" ]
then
	gsettings set org.gnome.shell.extensions.user-theme name 'theobar-nofloat'
elif [ $barnow = "'theobar-nofloat'" ]
then
	gsettings set org.gnome.shell.extensions.user-theme name 'theobar'
fi

