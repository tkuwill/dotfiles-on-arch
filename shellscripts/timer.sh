#!/bin/zsh




echo "Input mins:"
read mins
echo "Now time is "
date
echo "Set a timer for ${mins} minute(s)."
sleep ${mins}m && notify-send -u critical -t 10000 ${mins} 'min(s) timer has Finished.'
mpv ~/Pictures/sysicon/sysAudio/alarm.ogg --keep-open=no --no-resume-playback --no-terminal --no-video --volume=70


