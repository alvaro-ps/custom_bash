wd=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
mkdir -p ~/.config/terminator/
ln -f $wd"/config" ~/.config/terminator/config
