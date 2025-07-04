#!/bin/bash

ANNEE=$(date +%Y)

# Reset the content of the logfile
echo "" > /home/dimitri/log/youtube-rip.sh.log

# Rip Blast
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Blast/%(title)s.%(ext)s" "https://www.youtube.com/@blastinfo/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# Rip Enes Plus
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Enes Plus/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=avHJkXFR4vc&list=PLsVQl85xOjhzBZ_34xd80fmxJi99cpX-J" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Enes Plus/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=zSvSuyAS_cM&list=PLsVQl85xOjhzoFyZNQ_f442vO52LRIGEq" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Enes Plus/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=lPW10YithVc&list=PLsVQl85xOjhyhduKNtpTkOj2O0Pr4iv4j" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# Rip Enes Yilmazer
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Enes Yilmazer/%(title)s.%(ext)s" "https://www.youtube.com/@EnesYilmazer/videos" --dateafter 20191117 --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP Feldup
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Feldup/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=i422ne5jx6Q&list=PLjOr2GKM_jDzKHbJWr-YvLstifN6jc6hh" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# Rip Francois l'embrouille HD
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Francois l'embrouille HD/%(title)s.%(ext)s" "https://www.youtube.com/@Francoisdamiensoff/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# Rip BackInToys (JVCT)
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/JVCT/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=vQ3zR1M33ow&list=PLL9fstY1moGio44rsdeHC9M55N-m7IDRS" --match-filter "duration >= 2400" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --extractor-args youtubetab:skip=authcheck

# RIP Le Dessous des Cartes
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Le Dessous des Cartes/%(title)s.%(ext)s" "https://www.youtube.com/@LeDessousdesCartesARTE/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP Le Malaisologue
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Le Malaisologue/%(title)s.%(ext)s" "https://www.youtube.com/@LeMalaisologue/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP POA
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/POA/%(title)s.%(ext)s" "https://youtube.com/playlist?list=PL4It4O7gIc5CVGP88qZnDUmLulkJhroVG&si=4i_bhNiAhiOyN5I8" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP RoCarsTV
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/RoCarsTV/%(title)s.%(ext)s" "https://www.youtube.com/@RoCarsTV/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP Salut c'est cringe
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Salut c'est Cringe/%(title)s.%(ext)s" "https://www.youtube.com/@salutcestcringe/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# Rip Siangyoo (RN&B Mix - Audio)
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Musique/Boiler Room/%(title)s.%(ext)s" "https://www.youtube.com/@Siangyoo/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt -f 'bestaudio' -x --audio-format flac --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# Rip Siangyoo (RN&B Mix - Video)
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Boiler Room/%(title)s.%(ext)s" "https://www.youtube.com/@Siangyoo/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP Skyrock from Sly Guy 3
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Skyrock/%(playlist_title)s/%(title)s.%(ext)s" -i --yes-playlist --retries 10 "https://www.youtube.com/@SlyGuy-3/playlists" --cookies /home/dimitri/script-rip/youtube_cookies.txt --extractor-args youtubetab:skip=authcheck --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing

# Rip Strip-Tease Museum
/usr/sbin/yt-dlp --dateafter "20250703" -cw -o "/mnt/storage/YT-DLP-TMP/%(title)s.%(ext)s" "https://www.youtube.com/@stripteasemuseum1029/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --download-archive --break-on-existing

# Rip Strip-Tease Officiel
/usr/sbin/yt-dlp --dateafter "20250703" -cw -o "/mnt/storage/YT-DLP-TMP/%(title)s.%(ext)s" "https://www.youtube.com/@StripTeaseTVFR/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --download-archive --break-on-existing

# Rip Strip-Tease RTBF
/usr/sbin/yt-dlp --dateafter "20250703" -cw -o "/mnt/storage/YT-DLP-TMP/%(title)s.%(ext)s" "https://www.youtube.com/watch?v=1RhMsrmBXcU&list=PL0cjcGw-b8lMt_Cy_ArS2q5q2eUxg3aON&index=99" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --download-archive --break-on-existing

# Rip Sylvain Lyve
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/Sylvain Lyve/%(title)s.%(ext)s" "https://www.youtube.com/@SylvainLyve/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP UnusualVideos
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/UnusualVideos/%(title)s.%(ext)s" "https://www.youtube.com/@UnusualVideos/videos" --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck

# RIP VU France TV
/usr/sbin/yt-dlp -cw -o "/mnt/storage/Emby/Youtube/VU FranceTV/S$ANNEE/%(title)s.%(ext)s" "https://www.youtube.com/@VUFranceTV/videos"  --cookies /home/dimitri/script-rip/youtube_cookies.txt --remux-video mkv --embed-chapters --write-thumbnail --convert-thumbnails jpg --download-archive --break-on-existing --extractor-args youtubetab:skip=authcheck
