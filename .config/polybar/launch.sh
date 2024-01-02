#!/usr/bin/env bash


# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar

MONITOR1="HDMI-0"
polybar bar1 &

# MONITOR2="DP-2"
# polybar example2 &

