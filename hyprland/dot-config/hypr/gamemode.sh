#!/usr/bin/env sh
if [ "$(powerprofilesctl get)" = "performance" ] ; then
    powerprofilesctl set power-saver
    brightnessctl set 10%

    hyprctl --batch "\
        keyword animations:enabled 0;\
        keyword decoration:shadow:enabled 0;\
        keyword decoration:blur:enabled 0;\
        keyword general:gaps_in 0;\
        keyword general:gaps_out 0;\
        keyword general:border_size 1;\
	keyword decoration:active_opacity 1;\
	keyword decoration:inactive_opacity 1;\
        keyword decoration:rounding 0"
    exit
fi

powerprofilesctl set performance
brightnessctl set 70%
hyprctl reload
