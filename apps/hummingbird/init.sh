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
