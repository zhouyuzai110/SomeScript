# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls --color'
# alias ll='ls --color -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias vi='vim'
alias rstudio='rstudio-bin'

alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias la='ls -a --color=auto'

alias pacupg='sudo pacman -Syu'        # 同步软件仓库信息然后升级系统
alias pacin='sudo pacman -S'           # 从软件仓库安装软件包
alias pacins='sudo pacman -U'          # 从本地文件安装软件包
alias pacre='sudo pacman -R'           # 删除软件包，保留配置和依赖
alias pacrem='sudo pacman -Rns'        # 彻底删除软件包，清除配置，删除无用依赖
alias pacrep='pacman -Si'              # 显示软件仓库中某软件包的信息
alias pacreps='pacman -Ss'             # 在软件仓库搜索软件包
alias pacloc='pacman -Qi'              # 显示本地数据库中某软件包的信息
alias paclocs='pacman -Qs'             # 在本地数据库搜索软件包
alias paccln='sudo pacman -Scc'		   #清除已下载软件包


if [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
fi

#export PS1＝"[ \u@\h \w] \n \\$ >"
PS1="[\u@\h \W]\$ " 
export PS1
#export PATH="$PATH:$HOME/bin:/sbin:/opt/dropbox-dist"
