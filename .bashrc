# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias"

# History control
HISTCONTROL=ignoreboth
HISTSIZE=10000
HISTFILESIZE=2000
HISTIGNORE="exit:clear:nvim:ls:ll:cd:pwd:history:lsblk"

shopt -s histappend
shopt -s globstar
shopt -s checkwinsize

# Disable ctrl+s, ctrl+q
stty -ixon

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

PS1='\[\e[91;1m\][\[\e[93m\]\h\[\e[92m\]@\[\e[94m\]\u\[\e[0m\] \[\e[95;1m\]\w\[\e[91m\]]\[\e[0m\]\\$ '
