#!/bin/sh
# volume up icon is from https://icon-icons.com/icon/volume-1/70826.
# volume down icon is from https://icon-icons.com/icon/volume/71055.
# volume mute icon is from https://icon-icons.com/icon/mute/71139.
# Credit from https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a & https://wiki.archlinux.org/title/Dunst  .

# You can call this script like this:
# $./volume.sh up
# $./volume.sh down
# $./volume.sh mute

get_volume() {
  amixer get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1
}

is_mute() {
  amixer get Master | grep '%' | grep -oE '[^ ]+$' | grep off > /dev/null
}

send_notification() {
  volume=$(get_volume)
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipedia.org/wiki/Box-drawing_character
  # bar=$(seq -s "─" $(($volume / 2)) | sed 's/[0-9]//g')
  # Send the notification
  dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/volume-up.png -t 8000 -r 2593 -u normal -h int:value:"$volume" "Volume: ${volume}%"
}

send_notification1() {
  volume=$(get_volume)
  # Make the bar with the special character ─ (it's not dash -)
  # https://en.wikipedia.org/wiki/Box-drawing_character
  # bar=$(seq -s "─" $(($volume / 2)) | sed 's/[0-9]//g')
  # Send the notification
  dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/volume-down.png -t 8000 -r 2593 -u normal -h int:value:"$volume" "Volume: ${volume}%"
}

sendmute() {
  dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/mute.png -t 8000 -r 2593 -u normal "Volume: Mute"
}

case $1 in
  up)
    # Set the volume on (if it was muted)
    amixer -D pulse set Master on > /dev/null
    # Up the volume (+ 2%)
    amixer -D pulse sset Master 2%+ > /dev/null
    send_notification
    ;;
  down)
    amixer -D pulse set Master on > /dev/null
    amixer -D pulse sset Master 2%- > /dev/null
    send_notification1
    ;;
  mute)
    # Toggle mute
    amixer -D pulse set Master 1+ toggle > /dev/null
    if is_mute; then
      sendmute
    else
      send_notification
    fi
    ;;
esac
