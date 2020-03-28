# install i3 and extra stuff
# dmenu is the launcher, nitrogen to set backgrounds
sudo pacman -S i3 dmenu nitrogen
# install scripts for i3blocks (temperature, calendar, ...)
rm -rf ~/.config/i3blocks/
git clone https://github.com/vivien/i3blocks-contrib ~/.config/i3blocks/scripts/
# install font awesome for icons
pamac install ttf-font-awesome
