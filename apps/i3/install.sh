# install i3
sudo pacman -S i3 dmenu
# install scripts for i3blocks (temperature, calendar, ...)
rm -rf ~/.config/i3blocks/
git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks/scripts/
# install font awesome for icons
pamac install ttf-font-awesome
