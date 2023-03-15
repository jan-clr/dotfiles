#!/bin/bash

sudo apt update
sudo apt upgrade

# install fira code font
sudo apt install fonts-firacode

# gnome related installs
sudo apt install gnome-tweaks
sudo apt install libqt5svg5 qtdeclarative5-qtquick2-plugin qtdeclarative5-window-plugin qtdeclarative5-controls-plugin

# thumbnails for mp4 and webp
sudo apt install ffmpegthumbnailer
sudo apt install imagemagick
mkdir -p ~/.local/share/thumbnailers
echo "[Thumbnailer Entry]
Exec=/usr/bin/convert %i[0] -thumbnail %sx%s png:%o
MimeType=image/webp;
" > ~/.local/share/thumbnailers/webp.thumbnailer
rm -r ~/.cache/thumbnails/*

# enable wake on lan
sudo apt install ethtool