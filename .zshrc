# Path to your oh-my-zsh installation.
export ZSH=/home/zakrent/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="nanotech"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
plugins=(dircycle git colored-man-pages)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

alias notify-send="sudo -u zakrent DISPLAY=:0 notify-send"
alias update='trizen -Syu'
