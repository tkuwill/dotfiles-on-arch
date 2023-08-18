#!/bin/sh
# backlight up icon is from https://icon-icons.com/icon/add-brightness/71794.
# backlight down icon is from https://icon-icons.com/icon/less-brightness/71622.
# Credit from https://gist.github.com/sebastiencs/5d7227f388d93374cebdf72e783fbd6a & https://wiki.archlinux.org/title/Dunst  .

# You can call this script like this:
# $./screenlight.sh up
# $./screenlight.sh down

get_brightness() {
  xbacklight -get
}

send_notification() {
  brightness=$(get_brightness)
  # Send the notification
  dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/brightness-up.png -t 8000 -r 2593 -u normal -h int:value:"$brightness" "Brightness: ${brightness}%"
}

send_notification1() {
  brightness=$(get_brightness)
  # Send the notification
  dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/brightness-down.png -t 8000 -r 2593 -u normal -h int:value:"$brightness" "Brightness: ${brightness}%"
}

case $1 in
  up)
    # Set the brightness on

    # Up the brightness (+ 2%)
    xbacklight -inc 2
    send_notification
    ;;
  down)
    xbacklight -dec 2
    send_notification1
    ;;
esac
