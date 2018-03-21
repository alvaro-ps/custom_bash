#set vi mode in bash
set -o vi
#set page up and down to browse through history
bind '"\e[5~":history-search-backward'
bind '"\e[6~":history-search-forward'
export TERM=xterm-256color #(256 colors in the terminal, for solarized)
