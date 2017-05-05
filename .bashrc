#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# 将当前目录加入PATH环境变量，可以直接输入二进制文件名或shell文件名运行文件
PATH=$PATH:.

# archlinux pacman 
alias renew="sudo pacman -Syu"
alias getit="sudo pacman -S"
alias delit="sudo pacman -R"

PS1='[\u@\h \W]\$ '

alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias publicip='curl ipinfo.io'
alias ll='ls -lh'
alias sl='ls -lAh'
# jupyter notebook
alias ju='nohup jupyter notebook > /dev/null &'
alias ..='cd ../'
export VISUAL="vim"

# for powerline
export TERM="screen-256color"
. /usr/lib/python3.6/site-packages/powerline/bindings/bash/powerline.sh

# 给man手册添加颜色
man() {
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    command man "$@"
}

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

