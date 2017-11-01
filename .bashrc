#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# 将当前目录加入PATH环境变量，可以直接输入二进制文件名或shell文件名运行文件
PATH=$PATH:.
EDITOR="vim"

# archlinux pacman 
alias pacup="sudo pacman -Syu"
alias pacs="sudo pacman -S"
alias pacr="sudo pacman -R"

PS1='[\u@\h \W]\$ '

alias publicip='curl ipinfo.io'
alias netcheck='ping www.baidu.com'
alias ll='ls -lh'
alias la='ls -lAh'
# jupyter notebook
alias ju='nohup jupyter notebook > /dev/null &'
alias ..='cd ../'
alias ...='cd ../../'
alias pg='ps aux |grep -i'
alias hg='history |grep -i'
alias lg='ls -A |grep -i'
alias df='df -Th'
alias free='free -h'
alias py='ipython'
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

function pac () {
	if sudo pacman -S $1
	then
		return 0
	else
		yaourt $1
	fi
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

timedatectl set-ntp true

export CUDA_VISIBLE_DEVICES=0 # fix some bug for tensorflow

mentohust -u xxx -p xxx -b 3 -w > /dev/null

fish # use fish to work, but it's not the default shell, type 'exit' to use bash
