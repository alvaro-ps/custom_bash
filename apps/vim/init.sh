basepath=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
# hard link to the custom vimrc file
ln -f $basepath"/vimrc" ~/.vimrc

vck () {
    # open files that match the given regex
    REGEX=$1

    FILES_MATCHING_REGEX=$(ack -l $REGEX)
    if [ -z "$FILES_MATCHING_REGEX" ]; then
        echo "No files matching '$REGEX'"
        return
    fi
    # remove trailing slashes from the regex that will be passed to VIM, as it does not
    # need them
    VIM_REGEX=$(echo $REGEX | tr -d '\\')
    echo $FILES_MATCHING_REGEX | xargs -o vim +/$VIM_REGEX
}
