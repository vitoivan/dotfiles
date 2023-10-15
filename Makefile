### used for update my dotfiles without manual copy & paste

cfg_dir=~/.config

eww_dir=$(cfg_dir)/eww
polybar_dir=$(cfg_dir)/polybar
alacritty_dir=$(cfg_dir)/alacritty
bspwm_dir=$(cfg_dir)/bspwm
picom_dir=$(cfg_dir)/picom
sxhkd_dir=$(cfg_dir)/sxhkd

## update the dotfiles of this directory for future push to GH
update-remote-all: update-remote-eww update-remote-polybar update-remote-alacritty update-remote-bspwm update-remote-sxhkd

update-remote-eww:
	@echo "updating eww"
	rm -rf .config/eww
	cp -r $(eww_dir) .config

update-remote-polybar:
	@echo "updating polybar"
	rm -rf .config/polybar
	cp -r $(polybar_dir) .config

update-remote-alacritty:
	@echo "updating alacritty"
	rm -rf .config/alacritty
	cp -r $(alacritty_dir) .config


update-remote-bspwm:
	@echo "updating bspwm"
	rm -rf .config/bspwm
	cp -r $(bspwm_dir) .config



update-remote-sxhkd:
	@echo "updating sxhkd"
	rm -rf .config/sxhkd
	cp -r $(sxhkd_dir) .config


update-remote-picom:
	@echo "updating picom"
	rm -rf .config/picom
	cp -r $(picom_dir) .config



.PHONY: update-remote-all update-remote-eww update-remote-polybar update-remote-alacritty update-remote-bspwm update-remote-sxhkd

