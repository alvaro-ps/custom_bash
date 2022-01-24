VPN_SERVICE="openvpn@hummingbird.service"
vpn_on() {
    sudo systemctl restart $VPN_SERVICE
}

vpn_off() {
    sudo systemctl stop $VPN_SERVICE
}
