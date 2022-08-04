#!/bin/bash

device=$(pactl get-default-sink)

if [ $device = "alsa_output.pci-0000_02_00.3.codec-output" ]
then
	pactl set-card-profile $(pactl list cards | grep -B10 "Apple T2 Audio" | head -n1 | cut -d "#" -f2) output:builtin-speaker+input:builtin-mic

elif [ $device = "alsa_output.pci-0000_02_00.3.builtin-speaker" ]
then
	pactl set-card-profile $(pactl list cards | grep -B10 "Apple T2 Audio" | head -n1 | cut -d "#" -f2) output:codec-output+input:codec-input
fi
