#!/bin/bash

# https://github.com/jaagr/polybar

# link config to ~/.config/polybar/
wd=$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)
ln -f $wd"/config" ~/.config/polybar/config

source $wd"/displaytitle"
