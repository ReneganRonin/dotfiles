#!/usr/bin/env bash
player_status=$(playerctl -p spotifyd status)
if [[ $player_status = "Paused" ]]
then
    playerctl play
elif [[ $player_status = "Playing" ]]
then
    playerctl pause
else
    echo -e "Spotify not running"
fi

