# install i3 and extra stuff
# synapse is the launcher
# nitrogen to set backgrounds
# playerctl to play/pause with keyboard
sudo pacman -S i3 synapse nitrogen playerctl
# install scripts for i3blocks (temperature, calendar, ...)
rm -rf ~/.config/i3blocks/
git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks/scripts/
# install font awesome for icons
pamac install ttf-font-awesome
