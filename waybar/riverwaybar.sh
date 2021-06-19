#!/usr/bin/env bash

killall -q waybar
while pgrep -x waybar >/dev/null; do sleep 1; done
waybar --config=/home/tricks/.config/waybar/riverconfig --style=/home/tricks/.config/waybar/riverstyle.css
