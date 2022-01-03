export PLENTIFIC_WORKSPACE_ROOT=$HOME/plentific/workspaces/

#kubectx and kubens
export PATH=~/.kubectx:$PATH
alias eks_token=". ~/plentific/workspaces/master/infrastructure/tools/sts"

export PLENTIFIC_NAMESPACE="uk"

alias k="kubectl"
alias kls="kubectl get pods"
go_pod () {
    # bash shell in the web pod given by service name
    SERVICE_NAME=$1
    POD_NAME=$(kubectl get pods -o name | grep "$1.*web")
    kubectl exec --stdin --tty $POD_NAME -- /bin/bash
}

ksetctx () {
    CLUSTER_NAME=$1
    if [ -z "$CLUSTER_NAME" ]; then
        echo -e "No context given, choose from: \n"
        kubectx
        return 1
    fi
    CLUSTER_URI=$(kubectx | grep -i $CLUSTER_NAME)
    if [ -z "$CLUSTER_URI" ]; then
        echo -e "No context found, choose from: \n"
        kubectx
        return 1
    fi
    kubectx $CLUSTER_URI
}
