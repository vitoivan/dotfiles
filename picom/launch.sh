#!/usr/bin/env bash

killall -q picom
sleep 1
picom --config="$HOME/dotfiles/picom/picom.conf" &
