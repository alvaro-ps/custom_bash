sudo apt install python-is-python3
# install pip
sudo apt install python3-pip
sudo update-alternatives --install /usr/bin/pip pip /usr/bin/pip3 1

# install virtualenv
sudo pip install virtualenv

# install pyenv

# https://github.com/pyenv/pyenv/wiki#suggested-build-environment
sudo apt-get update
sudo apt-get install \
    make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
