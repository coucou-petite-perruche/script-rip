#!/bin/bash
# Update each day TV guide
rm /mnt/storage/TV-guide/xmltv.xml
cd /mnt/storage/TV-guide/
wget https://xmltvfr.fr/xmltv/xmltv.zip
unzip /mnt/storage/TV-guide/xmltv.zip
rm /mnt/storage/TV-guide/xmltv.zip
