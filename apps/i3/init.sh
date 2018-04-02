wd=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
ln -f $wd"/main_config" ~/.config/i3/config
ln -f $wd"/status_config" ~/.config/i3status/config

eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
