# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias"

# History control
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="lf:nvim:ls:ll:cd:pwd:exit:clear:fhis:history:ggg:ggs"

# Disable ctrl+s
stty stop undef

# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

PS1='\[\e[91;1m\][\[\e[93m\]\h\[\e[92m\]@\[\e[94m\]\u\[\e[0m\] \[\e[95;1m\]\w\[\e[91m\]]\[\e[0m\]\\$ '
