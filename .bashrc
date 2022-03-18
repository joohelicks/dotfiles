#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias vim="nvim"
alias v="nvim"
alias vimconf="nvim ~/.config/nvim/init.lua"
alias vimluaconf="nvim ~/.config/nvim/lua"
PS1='[\u@\h \W]\$ '

export PATH=~/.local/bin/:$PATH

# automatic startx
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
startx
fi
alias gitdf='git --git-dir=/home/$USER/src/dotfiles --work-tree=/home/$USER'
