basepath=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
# hard link to the custom vimrc file
ln -f $basepath"/vimrc" ~/.vimrc
