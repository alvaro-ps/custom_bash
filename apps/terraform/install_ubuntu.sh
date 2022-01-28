#!/bin/bash

## Terraform + Language Server
sudo apt-get update
sudo apt-get install -y gnupg software-properties-common curl

# Add the HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
# Add the official HashiCorp Linux repository
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt-get update
sudo apt-get install -y terraform terraform-ls


## tfenv (https://github.com/tfutils/tfenv)

git clone https://github.com/tfutils/tfenv.git ~/.tfenv
sudo ln -s ~/.tfenv/bin/* /usr/local/bin
