#!/usr/bin/env bash
swaylock -i "$(find ~/.xdgpath/pictures/wallpapers -type f | shuf -n 1)" || swaylock --color 000000