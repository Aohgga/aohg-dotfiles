#!/bin/sh

# 环境变量
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export SDL_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export GLFW_IM_MODULE=ibus

export XDG_SESSION_DESKTOP=vxwm
export XDG_CURRENT_DESKTOP=vxwm
export DESKTOP_SESSION=vxwm
export XDG_SESSION_TYPE=x11

export CM_LAUNCHER=rofi #clipmenud

export XCURSOR_SIZE=24
export XCURSOR_THEME=Qogir-Manjaro-Dark

export LANG=zh_CN.UTF-8

# autostart
xset r rate 300 50 &
feh --bg-fill ~/.cache/wallpaper &
~/.config/scripts/xobd &
flameshot &
clipmenud &
dunst &
~/.config/scripts/blocks/blocks &
exec vxwm
