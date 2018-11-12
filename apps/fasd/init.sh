#!/bin/bash

# initialize fasd
eval "$(fasd --init auto posix-alias bash-ccomp bash-ccomp-install)"
alias v="f -ie vim"
alias z="fasd_cd -id"
_fasd_bash_hook_cmd_complete v
