#!/bin/zsh
# Description: Download music from YouTube.

OK=0
CANCEL=1
ESC=255
    while : 
    do {
        exec 3>&1
	Input=$(dialog --title "Music Download" --form "Please input the url and the name of the song : " 10 70 5 \
	"Url:" 1 2 "$a" 1 10 30 0 \
	"Name:" 2 2 "$b" 2 10 30 0 \
            2>&1 1>&3)
        result=$?
        exec 3>&-
        
	IFS=$'\n'
        Values=($Input)
        unset IFS
	
        if [ $result -eq $OK ]; then
		# cd ~/Downloads
		# dialog --msgbox  "cd ~/Downloads" 25 70
		# sleep 1s
		dialog --msgbox "${Values[0]}" "${Values[1]}" 
		# dialog --prgbox   "Downloading..." "yt-dlp -f 'ba' -x --audio-format mp3 $a -o 'name.%(ext)s'"  30 70
	        # mv ~/Downloads/name.mp3 $b.mp3
		break
        elif [ $result -eq $CANCEL ] || [ $result -eq $ESC ]; then
            break
        fi
} done  
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
