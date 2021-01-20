basepath=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
# hard link to the custom vimrc file
ln -f $basepath"/vimrc" ~/.vimrc

vck () {
    # open files that match the given regex
    REGEX=$1
    ack -l $1 | xargs -o vim +/$1
}
