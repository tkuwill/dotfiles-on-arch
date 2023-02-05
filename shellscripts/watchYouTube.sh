#!/bin/zsh
# Description: Input the urls of videos that you want to watch in mpv, it will play those videos in order.
######## CAN'T USE NOW
function DialogGen() {
while num=$(dialog --title "Mpv For Yt" --inputbox "How many videos do you want to watch ?" 35 45 \
		  2>&1 > /dev/tty)
do
    rm ~/shellscripts/log/videos.m3u
    touch ~/shellscripts/log/videos.m3u
    for i in ${num}
    do
	while url=$(dialog --inputbox "Paste the Url of the video." 35 45 \
	2>&1 >/dev/tty)
	do
	echo ${url} >> ~/shellscripts/log/videos.m3u
	done
	break
    done
    break
done




clear # clear after user pressed Cancel

if [[ $(cat ~/shellscripts/log/videos.m3u) = null ]]; then 
    break
else 
mpv /home/will/shellscripts/log/videos.m3u
fi

}
DialogGen
