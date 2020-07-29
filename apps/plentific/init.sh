# NVM - node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# AVN - automatically select node version based on a .node-version file
[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

alias p='docker-compose -f ~/plentific/infrastructure/docker-compose/docker-compose.yaml'

pullall () {
    for repo_dir in ~/plentific/*; do 
        pushd $repo_dir >> /dev/null
        branch=$(git branch | grep \* | cut -d " " -f2)
        echo "Pulling latest version of $branch on $repo_dir"
        pull
        popd >> /dev/null
    done
}

export PLENTIFIC_WORKSPACE_ROOT=$HOME/plentific/workspaces/
source /home/alvaro/plentific/docker-ide-workspace/cli_bashcompletion.sh
