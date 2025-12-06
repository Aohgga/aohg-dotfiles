#!/bin/bash

COLOR_FOLDER_MAIN="{{colors.primary.default.hex}}"
COLOR_FOLDER_HIGHLIGHT="{{colors.primary.default.hex}}"
COLOR_FOLDER_SHADOW="{{colors.primary_container.default.hex}}"

cp -r ~/.config/matugen/templates/icon-theme/* ~/.local/share/icons/

sed -i 's/#5294e2/$COLOR_FOLDER_MAIN/g' ~/.local/share/icons/Papirus-Dark/*/places/*
sed -i 's/#4877b1/$COLOR_FOLDER_SHADOW/g' ~/.local/share/icons/Papirus-Dark/*/places/*
