#!/usr/bin/env bash
# Author: buzhengmiao
# vx: Qian_zai521
# Date: 2021-08-18 13:58
# Description: 所有的依赖包

pacman -S net-tools openssh wget curl base-devel xorg networkmanager bc firewalld pcsclite zsh \
	imwheel \
	dunst \
	alsa-utils \
	yay \
	yaourt \
	nautilus \
	# neovim
	neovim python-pip nodejs npm xclip \
	# fzf
	the_silver_searcher tree \
	chromium typora netease-cloud-music \
	firefox firefox-i18n-zh-cn \
	# 截图
	flameshot dunst	\
	wmname \
	utools \
	rdesktop \
	# 锁屏
	betterlockscreen \
	# 字体
	noto-fonts-emoji noto-fonts nerd-fonts-source-code-pro wqy-microhei ttf-dejavu \
	fcitx5-im fcitx5-chinese-addons fcitx5-pinyin-moegirl fcitx5-material-color \
	shellcheck

yay -S wps-office-cn wps-office-mui-zh-cn ttf-wps-fonts \
	python-xlsx2csv \
	libxft-bgra
