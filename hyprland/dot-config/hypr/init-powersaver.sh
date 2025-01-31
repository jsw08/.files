#!/usr/bin/env sh
if [ "$(powerprofilesctl get)" = "power-saver" ] ; then
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
        keyword decoration:rounding 0;\
	keyword monitor eDP-1,2880x1920@60,0x0,1.5,vrr,1"
    exit
fi

powerprofilesctl set balanced
brightnessctl set 70%
