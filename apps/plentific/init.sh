# NVM - node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# AVN - automatically select node version based on a .node-version file
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

export PLENTIFIC_WORKSPACE_ROOT=$HOME/plentific/workspaces/
source /home/alvaro/plentific/docker-ide-workspace/cli_bashcompletion.sh

export PYTHONPATH=$PYTHONPATH:/home/alvaro/plentific/plentific-common/
export PYTHONPATH=$PYTHONPATH:/home/alvaro/plentific/plentific-upload/
export PYTHONPATH=$PYTHONPATH:/home/alvaro/plentific/plentific-locations/
export PYTHONPATH=$PYTHONPATH:/home/alvaro/plentific/plentifone/

#kubectx and kubens
export PATH=~/.kubectx:$PATH
