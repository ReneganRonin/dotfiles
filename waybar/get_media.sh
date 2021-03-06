#!/usr/bin/env bash
media=$(playerctl -p spotifyd metadata -f "{{artist}} - {{title}}")
player_status=$(playerctl -p spotifyd status)

if [[ $player_status = "Playing" ]]
then
    song_status=''
elif [[ $player_status = "Paused" ]]
then
    song_status=''
else
    song_status='Spotify Inactive'
fi

echo -e "$song_status $media"
