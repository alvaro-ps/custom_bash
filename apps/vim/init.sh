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
    echo $FILES_MATCHING_REGEX | xargs -o vim +/$REGEX
}
