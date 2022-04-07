#set vi mode in bash
set -o vi
#set page up and down to browse through history
bind '"\e[5~":history-search-backward'
bind '"\e[6~":history-search-forward'
# auto completion case-insensitive
bind 'set completion-ignore-case on'
#(256 colors in the terminal, for solarized)
export TERM=xterm-256color 
export EDITOR=vim

replace() {
    # Replace some text with 
    CURRENT_TEXT=$1
    NEW_TEXT=$2
    echo "Replacing $CURRENT_TEXT with $NEW_TEXT in the following files:"
    for file in `ack $CURRENT_TEXT -l`
    do
        echo "- $file"
        sed -i  "s/$CURRENT_TEXT/$NEW_TEXT/g" $file
    done
    echo "Done!"
}

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

export JAVA_PATH=/usr/bin/java
export PATH=$JAVA_PATH:$PATH
