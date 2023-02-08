#!/bin/zsh
# Description: Download music from YouTube.
# After pasting the url, wait for downloading. When download finished, choose cancel to go to input the name of the song.

function Download(){
	while url=$(dialog --title "Music Download" --inputbox "Please input the url of the song : (If you have downloaded the music, choose cancel to go to the rename part.)" 10 70 \
            2>&1 >/dev/tty)
	    do 
	    cd ~/Downloads
	    dialog --msgbox  "cd ~/Downloads" 10 70
	    sleep 1s
	    dialog --prgbox   "Downloading..." "yt-dlp -f 'ba' -x --audio-format mp3 ${url} -o 'name.%(ext)s'"  10 70
    done
# clear # clear after user pressed Cancel

}
Download
	    
function Rename(){ 
	    while name=$(dialog --title "Music Download" --inputbox "Please input the name of the song :" 10 70 \
		2>&1 >/dev/tty)
	    do
	    mv ~/Downloads/name.mp3 ${name}.mp3
	    dialog --msgbox  "Finished" 10 70
	    break
	    done

clear # clear after user pressed Cancel
}
Rename
