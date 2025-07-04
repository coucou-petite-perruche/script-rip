#!/bin/bash

echo "Veuillez saisir l'URL Youtube :"

# Lit la saisie de l'utilisateur et la stocke dans la variable 'user_input'
read user_input

/usr/sbin/yt-dlp -o "/mnt/storage/Handbrake Output/%(title)s.%(ext)s" "$user_input" --cookies /home/dimitri/script-rip/youtube_cookies.txt -f 'bestaudio' -x --audio-format flac  --write-thumbnail --convert-thumbnails jpg --no-playlist --extractor-args youtubetab:skip=authcheck
