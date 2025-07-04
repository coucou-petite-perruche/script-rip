#!/bin/bash

############
# Variable #
############

ZAP_NUMBER=575
KOREUS_URL="https://www.koreus.com/video/koreusity-$ZAP_NUMBER.html"
DOSSIER="/mnt/storage/Emby/Youtube/Koreus/Koreus-$ZAP_NUMBER"

###############
# MAIN SCRIPT #
###############

# Extract URL

DAILYMOTION_URL=$(curl -s "https://www.koreus.com/video/koreusity-$ZAP_NUMBER.html" | grep -oP '(?<=href=")[^"]*' | grep "dailymotion.com/video")
echo $DAILYMOTION_URL

# #2 : Download video
#/usr/sbin/yt-dlp -cw -o "$DOSSIER/%(title)s.%(ext)s" "$DAILYMOTION_URL" --remux-video mkv --embed-chapters --download-archive --break-on-existing
/usr/sbin/yt-dlp -o "$DOSSIER/%(title)s.%(ext)s" "$DAILYMOTION_URL" --remux-video mkv --embed-chapters 

# #3 : Get image name
ZAP_NAME_TO_IMAGE=$(ls "$DOSSIER" | grep .mkv)
ZAP_NAME_TO_IMAGE="${ZAP_NAME_TO_IMAGE%.mkv}-poster.png"

# #3 : Get IMAGE URL
curl -s "$KOREUS_URL" > /tmp/koreus-$ZAP_NUMBER
EMISSION_URL_ZAP_IMAGE=$(grep -oP 'href="\K[^"]*' /tmp/koreus-$ZAP_NUMBER | grep thumbshigh)

# #4 : Download Image
wget -O "$DOSSIER/$ZAP_NAME_TO_IMAGE" "$EMISSION_URL_ZAP_IMAGE"

# #6 : Delete TMP file
rm /tmp/koreus-$ZAP_NUMBER

# #7 : Get names of .mkv and .png files
ZAP_MKV=$(ls "$DOSSIER" | grep .mkv)
ZAP_MKV_FULL_PATH="$DOSSIER/$ZAP_MKV"

ZAP_PNG=$(ls "$DOSSIER" | grep .png)
ZAP_PNG_FULL_PATH="$DOSSIER/$ZAP_PNG"

# #8 : Verify is two files exist and increments ZAP_NUMBER variable
if [[ -f $ZAP_MKV_FULL_PATH && -f $ZAP_PNG_FULL_PATH ]]; then
   # Increment $ZAP_NUMBER
   NEXT_NUMBER=$((ZAP_NUMBER + 1))
   sed -i "s/^ZAP_NUMBER=$ZAP_NUMBER/ZAP_NUMBER=$NEXT_NUMBER/" "$0"
   LOG_FILE="/home/dimitri/log/zap-koreus.sh.log"
   echo "Koreus script increment $ZAP_NUMBER" >> "$LOG_FILE"
else
   echo "Koreus script DOESNT increment $ZAP_NUMBER" >> "$LOG_FILE"
fi
