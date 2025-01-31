#!/usr/bin/env sh

hyprctl notify 5 2000 "rgb(ff1ea3)" "Switching to performance.."
powerprofilesctl set balanced
brightnessctl set 100%
hyprctl reload
