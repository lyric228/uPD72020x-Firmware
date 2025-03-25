#!/bin/sh

repo="uPD72020x-Firmware-1.0.0"
mkdir -p "~/$repo"
git clone "https://github.com/lyric228/$repo" "~/$repo"
cd "~/$repo/$repo"
makepkg -si
cd ~
rm -rfd "~/$repo"
