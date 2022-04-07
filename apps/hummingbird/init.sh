#!/bin/bash

VPN_SERVICE="openvpn@hummingbird.service"

vpn_on() {
    sudo systemctl restart $VPN_SERVICE
}

vpn_off() {
    sudo systemctl stop $VPN_SERVICE
}

vpn_toggle() {
    vpn_status=$(systemctl is-active $VPN_SERVICE)
    if [[ "$vpn_status" == "active" ]]; then
        vpn_off
    else
        vpn_on
    fi
}

export VAULT_ADDR=https://vault.infra.hummingbird-tech.io:8200

## Kubernetes (needs installation!!!)
alias k="kubectl"
alias kls="kubectl get pods"

go_pod () {
    # bash shell in the web pod given by service name
    SERVICE_NAME=$1
    MATCH="$SERVICE_NAME.*web"
    POD_NAME=$(kubectl get pods -o name | grep "$MATCH")
    if [ -z "$POD_NAME" ]; then
        echo -e "No pod found that matches $MATCH"
        return 1
    fi
    kubectl exec --stdin --tty "$POD_NAME" -- /bin/bash
}

# Krew
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

# kubectl tab-completion (see bash-completion in main ./install_ubuntu.sh)
source <(kubectl completion bash)
complete -F __start_kubectl k
