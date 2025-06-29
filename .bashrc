# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/alias"

# History control
HISTDIR="${XDG_CACHE_HOME:-$HOME/.cache}/bash"
HISTFILE="$HISTDIR/history"
[ ! -d "$HISTDIR" ] && mkdir -p "$HISTDIR"

HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
HISTIGNORE="lf:nvim:ls:cd:pwd:exit:clear:cls:history"

# Disable ctrl+s
stty stop undef

PS1='\[\e[91;1m\][\[\e[93m\]\h\[\e[92m\]@\[\e[94m\]\u\[\e[0m\] \[\e[95;1m\]\w\[\e[91m\]]\[\e[0m\]\\$ '
