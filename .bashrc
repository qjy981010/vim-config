#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PATH=$PATH:.

alias an="sudo pacman -S"
alias shan="sudo pacman -R"

PS1='[\u@\h \W]\$ '

alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias gongwangip='curl ipinfo.io'
alias ll='ls -lh'
alias sl='ls -lAh'
alias ju='nohup jupyter notebook &'
alias ..='cd ../'
export VISUAL="vim"

export TERM="screen-256color"
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}
alias update="sudo pacman -Syu"


# Useful unarchiver!
function extract () {
        if [ -f $1 ] ; then
                case $1 in
                        *.tar.bz2)        tar xjf $1                ;;
                        *.tar.gz)        tar xzf $1                ;;
                        *.bz2)                bunzip2 $1                ;;
                        *.rar)                rar x $1                ;;
                        *.gz)                gunzip $1                ;;
                        *.tar)                tar xf $1                ;;
                        *.tbz2)                tar xjf $1                ;;
                        *.tgz)                tar xzf $1                ;;
                        *.zip)                unzip $1                ;;
                        *.Z)                uncompress $1        ;;
                        *)                        echo "'$1' cannot be extracted via extract()" ;;
                esac
        else
                echo "'$1' is not a valid file"
        fi
}

