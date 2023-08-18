#!/bin/sh
# Description: A timer wrapped with dialog.

OK=0
CANCEL=1
ESC=255

while TIME=$(dialog --title "Timer" --inputbox "Please input the time (min): " 20 50 \
  2>&1 > /dev/tty); do
  result=$?
  if [ $result -eq $OK ]; then
    # while :
    # do {
    dialog --prgbox "Set a timer for $TIME minute(s). Start from" "date "+%T" " 20 50
    sleep "${TIME}"m && notify-send -u critical -t 10000 "$TIME" 'min(s) timer has Finished.'
    mpv ~/Pictures/sysicon/sysAudio/alarm.ogg --keep-open=no --no-resume-playback --no-terminal --no-video --volume=70
    break
    # } done
  elif [ $result -eq $CANCEL ] || [ $result -eq $ESC ]; then
    break
  fi
done
clear # clear after user pressed Cancel
