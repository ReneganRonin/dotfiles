#!/bin/bash
gnome_schema="org.gnome.desktop.interface"

gsettings set "$gnome_schema" gtk-theme "Plata-Noir-Compact"
gsettings set "$gnome_schema" icon-theme "Papirus-Dark"
gsettings set "$gnome_schema" cursor-theme "Breeze_Obsidian"
gsettings set "$gnome_schema" font-name "Hasklug Nerd Font 11"
