#!/bin/bash

# System
alias shutdown='sudo shutdown -h now'
alias update='sudo apt update && apt upgrade -y'

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
alias ls="eza --all --classify --color=auto --color-scale=all --icons=auto --group-directories-first"
alias ll="eza --all --classify --color=auto --color-scale=all --icons=auto --group-directories-first --long --links --smart-group --modified"
alias lr="eza --all --classify --color=auto --color-scale=all --icons=auto --grid --group-directories-first --recurse"
alias ltree="eza --icons=auto --all --group-directories-first --header --tree"

# Enviroment variables
export EDITOR=nvim
export PAGER=less
eval "$(starship init bash)"