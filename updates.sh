#!/usr/bin/env bash

sudo curl -s "https://archlinux.org/mirrorlist/?country=FR&country=GB&country=AU&country=BD&country=PH&country=CN&country=TW&country=VN&country=SG&protocol=https&use_mirror_status=on" | sed -e 's/^#Server/Server/' -e '/^#/d' | rankmirrors -n 5 - | sudo tee /etc/pacman.d/mirrorlist
echo "Updating the pacman mirrorlist..."
echo "Updated the pacman mirrorlist... syncing databases..."
sudo pacman -Syu
