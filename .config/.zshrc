# Description: Look up the word in the dict://dict.org
function dict() {
	echo -n "The word you want to search: "
	read word
	curl dict://dict.org/d:${word}
}
# Description: see the cheatsheet of a command.
function cheatsheet() {
	echo -n "Input the command that you want to see its cheatsheet: "
	read com
	curl cheat.sh/${com}
}

# Description: see weather locally or select a region.
function weather() {
	echo -n "Which region's weather do you want to know ? "
	read region
	curl https://wttr.in/${region}
}

# Description: reminder.
function reminder() {    
	echo -n "Input mins: "
	read mins
	echo -n "Input reminder messages: "
	read msg
	echo "Now time is $(date "+%T")"
	echo "Set a timer for ${mins} minute(s)."
	sleep ${mins}m && notify-send -u critical -t 10000 ${msg}
	mpv ~/Pictures/sysicon/sysAudio/alarm.ogg --keep-open=no --no-resume-playback --no-terminal --no-video --volume=70

}

# Description: record the battery cycle into batterycycle.log, then show the batterycycle.log with bat.
function batterycycle() {
    echo -e "\e[34mWriting the battery record into batterycycle.log ..."
    date "+%Y/%m/%d(%a) %T" >> /home/will/shellscripts/log/batterycycle.log && upower --show-info /org/freedesktop/UPower/devices/battery_BAT0 | grep 'charge-cycles' >> /home/will/shellscripts/log/batterycycle.log && upower --show-info /org/freedesktop/UPower/devices/battery_BAT0 | grep 'capacity' >> /home/will/shellscripts/log/batterycycle.log
    echo -e "\e[34mfinished !"
    sleep 1s
    bat /home/will/shellscripts/log/batterycycle.log 
}


# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b %m%u%c'

function battime {
    STATUS=$(cat /sys/class/power_supply/BAT0/status)
        if [ "$STATUS" = "Discharging" ]; then
	    acpi | awk '{print "BAT-time : " $5,$6"."}'
        elif [ "$STATUS" = "Charging" ]; then
	    acpi | awk '{print "BAT-time : " $5,$6,$7"."}'
        elif [ "$STATUS" = "Full" ]; then
	    acpi | sed '1 s/,//g' | awk '{print "Now BAT is "$3"."}'
        fi
}

setopt promptsubst

# PROMPT='%F{231}%n@%f%F{38}%m%f%F{14} %~ ${vcs_info_msg_0_} %f
# %F{40} %#%f  '
PROMPT='%F{14} %~ ${vcs_info_msg_0_} %f
%F{40} %#%f  '

# RPROMPT='%F{225}[%?]%f|%F{15}%*%f|%F{38}$(battery)%f'

# See prompt theme
autoload -Uz promptinit
promptinit

# The following lines were added by compinstall
zstyle :compinstall filename '/home/will/.zshrc'

zstyle ':completion:*' menu yes select
# bindkeys and alias and some configs should be put after compinit.
autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=99999
HISTORY_IGNORE="(vim|rm -rf|rm -rf .git|neofetch|vifm|dict|cheatsheet|weather|reminder|batterycycle|sudo systemctl start bluetooth.service|sudo systemctl stop bluetooth.service|musicDownload|newsboat|free|uname -r|uname -a|free -h|df|df -h|htop|vim .vimrc|nmtui|sudo intel_gpu_top|tmux kill-session -t 1|cd ..|vim .zshrc|vim .zsh_history|bat .zsh_history|source .zshrc|python|startx|ls|cd|pwd|exit|cmus|la|bye|ping www.google.com|mpv|yt-dlp|paru|pavucontrol|./shellscripts/batterycycle.sh|tmux|alsamixer|acpi|gitui|lazygit ..)"
# set zsh to emacs mode
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
# Use C-x C-e to open the default editor to edit the command line
autoload -z edit-command-line
zle -N edit-command-line
bindkey "^X^E" edit-command-line
# End of lines configured by zsh-newuser-install

alias lah="ls -lah --color=auto"
alias la="ls -la --color=auto"
alias ls -la="ls -la --color=auto"
alias ls="ls --color=auto"
alias chromium="chromium --force-device-scale-factor=1.3"
alias liveStream="/home/will/shellscripts/liveStream.sh"
alias musicDownloadTui="/home/will/shellscripts/musicDownloadTui.sh"
alias vpnLocation="curl ipinfo.io/country"
alias vpnCountry="curl ifconfig.co/country"


TIMEFMT=$'real\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#f5f2f2,bg=#686868,bold,underline"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# fzf
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# npm package
export PATH=~/.npm-packages/bin:$PATH
export NODE_PATH=~/.npm-packages/lib/node_modules

# For colorful man 
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'
# Use vim as a pager for man
export MANPAGER="/bin/sh -c \"col -b | vim --noplugin -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
