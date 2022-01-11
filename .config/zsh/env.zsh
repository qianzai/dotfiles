#!/usr/bin/env bash
# Author: buzhengmiao
# vx: Qian_zai521
# Date: 2020-11-27 19:12
# Description:

# idea
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit
wmname LG3D

# fcitx
export GTK_IM_MODULE=fcitx5
export QT_IM_MODULE=fcitx5
export XMODIFIERS="@im=fcitx5"

# 中文
export LANG=zh_CN.UTF-8
export LANGUAGE=zh_CN:en_US

#ranger
export RANGER_LOAD_DEFAULT_RC=FALSE

# HiDPI 显示器

# npm
export PATH=/home/bzm/Public/NPM/prefix/bin:$PATH

# 代理配置
# proxy
# export http_proxy=http://127.0.0.1:7890
# export https_proxy=$http_proxy
# export socks5_proxy="socks5://127.0.0.1:7891"
