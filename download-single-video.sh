#!/bin/bash

echo "Veuillez saisir l'URL Youtube :"

# Lit la saisie de l'utilisateur et la stocke dans la variable 'user_input'
read user_input

/usr/sbin/yt-dlp -cw -o "/mnt/storage/Handbrake Output/%(title)s.%(ext)s" "$user_input" --cookies /home/dimitri/script-rip/youtube_cookies.txt --no-playlist --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck
