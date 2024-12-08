#!/bin/bash

# System
alias sleep='doas systemctl suspend'
alias hibernate='doas systemctl hibernate'
alias shutdown='shutdown -h now'

# Packages
alias install='doas apt install'
alias remove='doas apt remove'
alias installed='apt list'
alias update='doas apt update && apt upgrade -y'

# System
alias free='free -h'
alias cpu='ps aux | sort -r -nk +4 | head | $PAGER'
alias cpuinfo='lscpu | $PAGER'

# Change directory aliases
alias home='cd $HOME'
alias config='cd $HOME/.config'
alias docs='cd $HOME/Documents'
alias down='cd $HOME/Downloads'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Eza
alias ls='eza --all --classify --color=auto --color-scale=all --icons=auto --group-directories-first'
alias ll='eza --all --classify --color=auto --color-scale=all --icons=auto --group-directories-first --long --links --smart-group --modified'
alias lr='eza --all --classify --color=auto --color-scale=all --icons=auto --grid --group-directories-first --recurse'
alias ltree='eza --icons=auto --all --group-directories-first --header --tree'

# Enviroment variables
export EDITOR=nvim
export PAGER=less
export PATH="$HOME/.cargo/bin:$PATH"

# Starship
eval "$(starship init bash)"
