wd=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
mkdir -p ~/.config/i3
ln -f "$wd/main_config" ~/.config/i3/config
mkdir -p ~/.config/i3blocks
ln -f "$wd/i3blocks.conf" ~/.config/i3blocks/i3blocks.conf

# Link backgrounds to the Pictures folder
if [ ! -d ~/Pictures/backgrounds/ ]; then
    ln -s "$wd/backgrounds/" ~/Pictures/
fi

# SSH agent
eval $(/usr/bin/gnome-keyring-daemon --start --components=gpg,pkcs11,secrets,ssh)
export GNOME_KEYRING_CONTROL GNOME_KEYRING_PID GPG_AGENT_INFO SSH_AUTH_SOCK
