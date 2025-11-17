#!/usr/bin/env bash

killall -q sxhkd
sleep 1

CONFIG_FILE=~/dotfiles/sxhkd/sxhkdrc

sxhkd -c $CONFIG_FILE &
