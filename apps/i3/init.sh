wd=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
ln -f $wd"/main_config" ~/.config/i3/config
ln -f $wd"/status_config" ~/.config/i3status/config
