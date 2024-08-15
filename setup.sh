#!/bin/bash

here=$(pwd)
cfg_dir=~/.config

rofi_dir="$cfg_dir/rofi"
polybar_dir="$cfg_dir/polybar"
alacritty_dir="$cfg_dir/alacritty"
bspwm_dir="$cfg_dir/bspwm"
picom_dir="$cfg_dir/picom"
sxhkd_dir="$cfg_dir/sxhkd"

old="_old"

function cpWithBkp() {
	
	if [ ! -d "$1" ]; then
		cp -r "$2" "$1"
		return
	else 
		echo "making backup $1$old"
		mv "$1" "$1$old"
		echo "copying $2 to $1"
		cp -r "$2" "$1"
	fi
}

if [ "$1" == "all" ]; then
	cpWithBkp "$rofi_dir" $here/config/rofi
	cpWithBkp "$polybar_dir" $here/config/polybar
	cpWithBkp "$alacritty_dir" $here/config/alacritty
	cpWithBkp "$bspwm_dir" $here/config/bspwm
	cpWithBkp "$picom_dir" $here/config/picom
	cpWithBkp "$sxhkd_dir" $here/config/sxhkd
elif [ "$1" == "rofi" ]; then
	cpWithBkp "$rofi_dir" $here/config/rofi
elif [ "$1" == "polybar" ]; then
	cpWithBkp "$polybar_dir" $here/config/polybar
elif [ "$1" == "alacritty" ]; then
	cpWithBkp "$alacritty_dir" $here/config/alacritty
elif [ "$1" == "bspwm" ]; then
	cpWithBkp "$bspwm_dir" $here/config/bspwm
elif [ "$1" == "picom" ]; then
	cpWithBkp "$picom_dir" $here/config/picom
elif [ "$1" == "sxhkd" ]; then
	cpWithBkp "$sxhkd_dir" $here/config/sxhkd
else
	echo "Usage: $0 [all|rofi|polybar|alacritty|bspwm|picom|sxhkd]"
fi
