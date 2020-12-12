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
export PYTHONPATH=$PYTHONPATH:/home/alvaro/plentific/emails-python-client/

#kubectx and kubens
export PATH=~/.kubectx:$PATH
alias eks_token=". ~/plentific/workspaces/master/infrastructure/tools/sts"

export PLENTIFIC_NAMESPACE="uk"

go_pod () {
    # bash shell in the web pod given by service name
    SERVICE_NAME=$1
    POD_NAME=$(kubectl get pods -o name | grep "$1.*web")
    kubectl exec --stdin --tty $POD_NAME -- /bin/bash
}

# env vars for plentestic
export $(xargs <~/.plentestic)
