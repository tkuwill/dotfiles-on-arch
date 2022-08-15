# Description: see the cheatsheet of a command.
function cheatsheet() {
	echo "Input the command that you want to see its cheatsheet:"
	read com
	curl cheat.sh/${com}
}

# Description: see weather locally or select a region.
function weather() {
	echo "Which region's weather do you want to know ?"
	read region
	curl https://wttr.in/${region}
}

# Description: reminder.
function reminder() {    
	echo "Input mins:"
	read mins
	echo "Input reminder messages:"
	read msg
	echo "Now time is $(date "+%T")"
	echo "Set a timer for ${mins} minute(s)."
	sleep ${mins}m && notify-send -u critical -t 10000 ${msg}
	mpv ~/Music/lovesongs/God\ knows...\ \'\'The\ Melancholy\ of\ Haruhi\ Suzumiya\'\'.mp3 --start=10 --end=20 --keep-open=no --no-resume-playback --no-terminal --no-video

}

# Description: record the battery cycle into batterycycle.log, then show the batterycycle.log with bat.
function batterycycle() {
    echo -e "\e[34mWriting the battery record into batterycycle.log ..."
    date "+%Y/%m/%d(%a) %T" >> /home/will/shellscripts/log/batterycycle.log && upower --show-info /org/freedesktop/UPower/devices/battery_BAT0 | grep 'charge-cycles' >> /home/will/shellscripts/log/batterycycle.log && upower --show-info /org/freedesktop/UPower/devices/battery_BAT0 | grep 'capacity' >> /home/will/shellscripts/log/batterycycle.log
    echo -e "\e[34mfinished !"
    sleep 1s
    bat /home/will/shellscripts/log/batterycycle.log 
}

# Download music from YouTube
function musicDownload() {

    lastdir="$(pwd)"
    echo -e "\e[34mInput the url of the song:"
    read urls
    echo -e "\e[35mInput the name of the song:"
    read name
    echo -e "\e[33mcd to Downloads"
    cd ~/Downloads

    echo -e "\e[32mNow downloading music from YouTube..."
    yt-dlp -f 'ba' -x --audio-format mp3 ${urls}  -o 'name.%(ext)s'
    mv name.mp3 ${name}.mp3

    cd "$lastdir"
    echo "Download finished !!!"
}

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b %m%u%c'


# battery
function battery {
    acpi | cut -c 11-48
}


setopt promptsubst

# PROMPT='%F{231}%n@%f%F{38}%m%f%F{14} %~ ${vcs_info_msg_0_} %f
# %F{40} %#%f  '
PROMPT='%F{14} %~ ${vcs_info_msg_0_} %f
%F{40} %#%f  '

# RPROMPT='%F{225}[%?]%f|%F{15}%*%f|%F{38}$(battery)%f'


# The following lines were added by compinstall
zstyle :compinstall filename '/home/will/.zshrc'

zstyle ':completion:*' menu yes select
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=99999
HISTORY_IGNORE="(reminder|batterycycle|sudo systemctl start bluetooth.service|sudo systemctl stop bluetooth.service|musicDownload|newsboat|free|uname -r|uname -a|free -h|df|df -h|sudo htop|vim .vimrc|nmtui|sudo intel_gpu_top|tmux kill-session -t 1|cd ..|vim .zshrc|vim .zsh_history|bat .zsh_history|source .zshrc|python|startx|ls|cd|pwd|exit|cmus|la|bye|ping www.google.com|mpv|yt-dlp|paru|pavucontrol|./shellscripts/batterycycle.sh|tmux|alsamixer|acpi|gitui| ..)"
bindkey -e
bindkey "\e[3~" delete-char
# for urxvt and uxterm
bindkey "\e[7~" beginning-of-line
bindkey "\e[8~" end-of-line
# for tmux
bindkey "\E[1~" beginning-of-line
bindkey "\E[4~" end-of-line
# for st terminal
bindkey "^[[H" beginning-of-line
bindkey "^[[4~" end-of-line 
# End of lines configured by zsh-newuser-install

alias lah="ls -lah --color=auto"
alias la="ls -la --color=auto"
alias ls -la="ls -la --color=auto"
alias ls="ls --color=auto"


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#686868,bg=black,bold,underline"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
