#!/bin/bash
# Description: A TUI for accessing the config of cmus, such as vol, loop, etc.
# Needed dependencies: dialog, cmus, playerctl, dunst

##################################################
    items=(1 "Vol" 
	   2 "Loop_current_track"
	   3 "Loop_all_playlist"
	   4 "quit")
function DialogGen() {
    while choice=$(dialog --title "CMUS OPTIONS" --menu "What do you want in cmus: " 12 30 25 "${items[@]}" \
	             2>&1 >/dev/tty)
    do
    case $choice in
        1)    while fig=$(dialog --inputbox "Cmus Volume (from 0.0~1.0):" 12 30 \
	      2>&1 >/dev/tty)
	      do
	      playerctl -p cmus volume ${fig}
	      dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/volume-up.png -t 4500 "cmus Volume ${fig}"
	      break
	      done
	      break
	      ;;
        2)    playerctl -p cmus loop track
	      dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/music.png -t 4500 "cmus Repeat Current Track"
              break
	      ;;
        3)    playerctl -p cmus loop playlist
	      dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/music.png -t 4500 "cmus Repeat All Playlist"
              break
	      ;;
	4)    break
              ;;
    esac
done
clear # clear after user pressed Cancel
}
DialogGen

