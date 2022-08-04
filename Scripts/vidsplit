#!/bin/bash

ffmpeg -i $1 -c copy -map 0 -segment_time 00:00:30 -f segment -reset_timestamps 1 out%03d.mp4
