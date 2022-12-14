sudo snap install --beta nvim --classic
# Packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# tree-sitter-cli
sudo npm install -g tree-sitter-cli
# python 
sudo npm install -g pyright
git clone https://github.com/alefpereira/pyenv-pyright.git "$(pyenv root)"/plugins/pyenv-pyright
