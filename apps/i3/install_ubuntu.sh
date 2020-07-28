# to install i3 gaps
sudo add-apt-repository -y ppa:kgilmer/speed-ricer
sudo apt-get update
# install i3 and extra stuff
# synapse is the launcher
# nitrogen to set backgrounds
# playerctl to play/pause with keyboard
sudo apt install -y i3-gaps i3status i3blocks synapse nitrogen playerctl
# install scripts for i3blocks (temperature, calendar, ...)
rm -rf ~/.config/i3blocks/
git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks/scripts/
# install font awesome for icons
sudo apt install fonts-font-awesome
