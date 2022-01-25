HEADPHONES="74:45:CE:B7:26:0B"
headphones_on() {
    bluetoothctl connect $HEADPHONES
}

headphones_off() {
    bluetoothctl disconnect $HEADPHONES
}
