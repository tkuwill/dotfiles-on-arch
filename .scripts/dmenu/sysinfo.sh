#!/bin/sh
# ram.png is from <a href="https://www.flaticon.com/free-icons/ram" title="ram icons">Ram icons created by Freepik - Flaticon</a>.
# music.png is from <a href="https://www.flaticon.com/free-icons/google-play-music" title="google play music icons">Google play music icons created by Mayor Icons - Flaticon</a>
# battery.png is from <a href="https://www.flaticon.com/free-icons/full-battery" title="full battery icons">Full battery icons created by Pixel perfect - Flaticon</a>.
# cpu.png is from <a href="https://www.flaticon.com/free-icons/thermometer" title="thermometer icons">Thermometer icons created by Smashicons - Flaticon</a>.
# wifi.png is from <a href="https://www.flaticon.com/free-icons/wifi" title="wifi icons">Wifi icons created by Gregor Cresnar - Flaticon</a>.
# You have to install lm_sensors, acpi, libnotify and a notification package (like dunst) in order to use this script.

function mem {
    free -h | grep 'Mem' | awk '{print "Mem is used : "$3" / "$2"."}'
}


function battime {
    acpi | awk '{print "BAT-time : " $5,$6"."}'
}


function cpu_temp {
    sensors | grep 'Core 1' | sed '1 s/+/\ /g' | awk '{print "CPU temp : "$3"."}'
}

function wifi {
    FIG=$(nmcli device | sed '2 q' | sed '1 d' | awk '{print $5}')
        if [ "$FIG" = "" ]; then
	    nmcli device | sed '2 q' | sed '1 d' | awk '{print $4,$3}'
         else
            nmcli device | sed '2 q' | sed '1 d' | awk '{print $4,$5,$3}'
        fi
}


function bat_temp {
    acpi --thermal | grep -Eo '[0-9][0-9].[0-9]' | awk '{print "BAT temp : "$1"°C."}'
}

function sysinfo {
    options="Cancel\nMemory\nBAT-remaining\ninternet\ncpu_temp\nBAT_temp"
    selected=$(echo -e $options | dmenu -i -p "System info")
    if [[ $selected = "Memory" ]]; then 
        notify-send -i /home/will/Pictures/sysicon/ram.png -t 8000 "$(mem)" 
    elif [[ $selected = "BAT-remaining" ]]; then 
        notify-send -i /home/will/Pictures/sysicon/battery.png -t 8000 "$(battime)"  
    elif [[ $selected = "internet" ]]; then 
        notify-send -i /home/will/Pictures/sysicon/wifi.png -t 8000 "$(wifi)"  
    elif [[ $selected = "cpu_temp" ]]; then 
        notify-send -i /home/will/Pictures/sysicon/cpu.png -t 5000 "$(cpu_temp)"
    elif [[ $selected = "BAT_temp" ]]; then 
        notify-send -i /home/will/Pictures/sysicon/battery.png -t 8000 "$(bat_temp)"  
    elif [[ $selected = "Cancel" ]]; then 
        return
    fi

}

sysinfo
