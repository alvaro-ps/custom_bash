#set vi mode in bash
set -o vi
#set page up and down to browse through history
bind '"\e[5~":history-search-backward'
bind '"\e[6~":history-search-forward'
# auto completion case-insensitive
bind 'set completion-ignore-case on'
#(256 colors in the terminal, for solarized)
export TERM=xterm-256color 
