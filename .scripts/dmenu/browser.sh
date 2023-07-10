#!/bin/sh
# A script for starting browsers.



function browser {
    options="Cancel\nfirefox\nChromium"
    selected=$(echo -e $options | dmenu -i -p "Which browser do you want to use ?")
    if [[ $selected = "Chromium" ]]; then 
        chromium --force-device-scale-factor=1.3    
    elif [[ $selected = "firefox" ]]; then 
        firefox  
    elif [[ $selected = "Cancel" ]]; then 
        return
    fi
}

browser
