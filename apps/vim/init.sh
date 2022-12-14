basepath=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
# hard link to the custom vimrc file
ln -f $basepath"/vimrc" ~/.vimrc
# hard link of coc-setting.json
ln -f $basepath"/coc-settings.json" ~/.vim/coc-settings.json
mkdir -p ~/.config/nvim/lua/
ln -f "${basepath}/nvim/init.vim" "${HOME}/.config/nvim/init.vim"
ln -fs "${basepath}"/nvim/lua/* "${HOME}"/.config/nvim/lua/

alias vim=nvim

setup_repo () {
    pyenv pyright
}

vck () {
    # open files that match the given regex
    REGEX="$1"
    DIRECTORY=$2

    # remove arguments from the list of arguments, so that we can pass them to ack
    [ -n "$REGEX" ] && shift
    [ -n "$DIRECTORY" ] && shift

    FILES_MATCHING_REGEX=$(ack -l "$REGEX" $DIRECTORY $@)
    if [ -z "$FILES_MATCHING_REGEX" ]; then
        echo "No files matching '"$REGEX"'"
        return
    fi
    # remove trailing slashes from the regex that will be passed to VIM, as it does not
    # need them
    VIM_REGEX=$(echo "$REGEX" | tr -d '\\')
    echo "$FILES_MATCHING_REGEX" | xargs -o nvim +/"$VIM_REGEX"
}
