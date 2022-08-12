

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
HISTORY_IGNORE="(python|startx|ls|cd|pwd|exit|cmus|la|bye|fff|ranger|mpv|yt-dlp|paru|yay|pavucontrol|rofi|./batterycycle.sh|tmux|alsamixer|acpi|gitui| ..)"
bindkey -e
# End of lines configured by zsh-newuser-install

alias lah="ls -lah --color=auto"
alias la="ls -la --color=auto"
alias ls -la="ls -la --color=auto"
alias ls="ls --color=auto"


ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#686868,bg=black,bold,underline"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
