#!/bin/sh
# bell.png is from <a href="https://www.flaticon.com/free-icons/ui" title="ui icons">Ui icons created by apien - Flaticon</a>
# bell-ring.png is from <a href="https://www.flaticon.com/free-icons/notification" title="notification icons">Notification icons created by Freepik - Flaticon</a>.
#   
# chat.png is from https://uxwing.com/speaking-bubbles-line-icon. 


function notification {
    options="Cancel\nNotification center\nClean all notifications\nDo not disturb\nNormal"
    selected=$(echo -e $options | dmenu -i -p "Notification Mode")
    if [[ $selected = "Do not disturb" ]]; then 
        notify-send -i /home/will/Pictures/sysicon/bell.png -u critical -t 3000 "Do Not Disturb is now ON." && sleep 1s && dunstctl set-paused true
    elif [[ $selected = "Clean all notifications" ]]; then 
	dunstctl history-clear && dunstify -a "changeVolume" -i /home/will/Pictures/sysicon/chat.png -t 8000 "Notifications history purged !"  
    elif [[ $selected = "Normal" ]]; then 
        dunstctl set-paused false && notify-send -i /home/will/Pictures/sysicon/bell-ring.png -u critical -t 8000 "Do Not Disturb is now OFF."  
    elif [[ $selected = "Cancel" ]]; then 
        return
    elif [[ $selected = "Notification center" ]]; then 
	/home/will/shellscripts/notificationcenter.sh
    fi
}

notification
