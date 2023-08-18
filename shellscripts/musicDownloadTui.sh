#!/bin/sh
# Description: Download music from YouTube.

OK=0
CANCEL=1
ESC=255

    while URL=$(dialog --title "Music Download" --inputbox "Please input the url of the song : " 10 70 \
	2>&1 >/dev/tty)
	do
        result=$?
        if [ $result -eq $OK ]; then
	    # while : 
	    # do {
		cd ~/Downloads || exit
		dialog --msgbox  "cd ~/Downloads" 15 70
		dialog --prgbox   "Downloading..." "yt-dlp -f 'ba' -x --audio-format mp3 $URL -o 'name.%(ext)s'"  30 70
                while nam=$(dialog --inputbox "Song name:" 10 70 \
	        2>&1 >/dev/tty)
	        do
		mv ~/Downloads/name.mp3 "${nam}".mp3
		dialog --prgbox "Files in ~/Downloads" "ls -la ~/Downloads" 30 100
		break
		done
		break
	    # } done
        elif [ $result -eq $CANCEL ] || [ $result -eq $ESC ]; then
            break
        fi
        done  
clear # clear after user pressed Cancel
# function Rename(){ 
# 	    while name=$(dialog --title "Music Download" --inputbox "Please input the name of the song :" 10 70 \
# 		2>&1 >/dev/tty)
# 	    do
# 	    mv ~/Downloads/name.mp3 ${name}.mp3
# 	    dialog --msgbox  "Finished" 10 70
# 	    break
# 	    done

# clear # clear after user pressed Cancel
# }
# Rename
