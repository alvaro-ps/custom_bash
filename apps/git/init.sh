#!/bin/bash

# https://github.com/magicmonty/bash-git-prompt
# Download the gitprompt.sh file from the Github repo and place it
# wherever consistently with the path indicated in the source below
GIT_PROMPT_ONLY_IN_REPO=0
GIT_PROMPT_THEME=Solarized
source ~/.bash-git-prompt/gitprompt.sh
alias push='br=$(git branch | grep \* | cut -d " " -f2); git push origin $br'
alias pull='br=$(git branch | grep \* | cut -d " " -f2); git pull origin $br'
