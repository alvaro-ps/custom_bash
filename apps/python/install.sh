# install pip
sudo pacman -S python-pip

# install virtualenv
pip install virtualenv

sudo pacman -S --needed base-devel openssl zlib xz

# install pyenv
curl https://pyenv.run | bash
