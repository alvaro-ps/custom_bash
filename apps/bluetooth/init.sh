HEADPHONES="74:45:CE:B7:26:0B"
headphones_connect() {
    bluetoothctl connect $HEADPHONES
}

headphones_disconnect() {
    bluetoothctl disconnect $HEADPHONES
}
