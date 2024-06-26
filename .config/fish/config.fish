# fish shell settings

# TokyoNight Color Palette
set -l foreground c0caf5
set -l selection 33467C
set -l comment 565f89
set -l red f7768e
set -l orange ff9e64
set -l yellow e0af68
set -l green 9ece6a
set -l purple 9d7cd8
set -l cyan 7dcfff
set -l pink bb9af7
    
# Syntax Highlighting Colors
set -g fish_color_normal $foreground
set -g fish_color_command $cyan
set -g fish_color_keyword $pink
set -g fish_color_quote $yellow
set -g fish_color_redirection $foreground
set -g fish_color_end $orange
set -g fish_color_error $red
set -g fish_color_param $purple
set -g fish_color_comment $comment
set -g fish_color_selection --background=$selection
set -g fish_color_search_match --background=$selection
set -g fish_color_operator $green
set -g fish_color_escape $pink
set -g fish_color_autosuggestion $comment
    
# Completion Pager Colors
set -g fish_pager_color_progress $comment
set -g fish_pager_color_prefix $cyan
set -g fish_pager_color_completion $foreground
set -g fish_pager_color_description $comment

# disable initial message of fish
set -U fish_greeting

# ----------------------------------------
# general settings

# themes configs
set -g theme_display_user no
set -g theme_hide hostname no
set -g theme_hostname always

# ----------------------------------------
# set global (export) values

# set -gx TERM xterm-256color
set -gx TERM xterm-kitty
set -gx EDITOR nvim

# add paths to PATH var
set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin

# ----------------------------------------
# aliases

# Directory abbreviations
abbr -a -g l 'ls'
abbr -a -g la 'ls -a'
abbr -a -g ll 'ls -l'
abbr -a -g lal 'ls -al'
abbr -a -g d 'dirs'
abbr -a -g home 'cd $HOME'
abbr -a -g config 'cd ~/.config/'

# User abbreviations
abbr -a -g ytmp3 'youtube-dl --extract-audio --audio-format mp3'				# Convert/Download YT videos as mp3
abbr -a -g cls 'clear'																								# Clear
abbr -a -g his 'history'																								# Show history
abbr -a -g arrivederci 'shutdown now'																	# Epic way to shutdown
abbr -a -g genpass 'openssl rand -base64 20'													# Generate a random, 20-charactered password
abbr -a -g sha 'shasum -a 256'													# Test checksum
abbr -a -g everything 'sudo apt update && apt upgrade -y'	

# ~/.config/fish/config.fish
starship init fish | source
set -gx STARSHIP_CONFIG $HOME/.config/starship/starship.toml
