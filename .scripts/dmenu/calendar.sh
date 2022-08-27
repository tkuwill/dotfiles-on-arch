#!/bin/sh

function calendar {
    options="Cancel\nthis-month\nthis-year\nnext-twelve-months"
    selected=$(echo -e $options | dmenu -i -p "Calendar")
    if [[ $selected = "this-month" ]]; then 
        urxvt -e zsh -c 'cal; zsh'
    elif [[ $selected = "this-year" ]]; then 
        urxvt -e zsh -c 'cal -y; zsh'
    elif [[ $selected = "next-twelve-months" ]]; then 
        urxvt -e zsh -c 'cal -Y; zsh'
    elif [[ $selected = "Cancel" ]]; then 
        return
    fi
}

calendar
