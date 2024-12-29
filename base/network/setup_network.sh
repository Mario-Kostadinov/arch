#!/bin/bash

network_install_packages() {
    install_package "networkmanager"
    install_package "dhclient"
    install_package "systemd-resolvconf"
}

network_enable_services() {
    systemctl enable NetworkManager
    systemctl start NetworkManager

    systemctl enable systemd-resolved
    systemctl start systemd-resolved
    ln -sf /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
}

configure_hostname(){
    echo "$HOSTNAME" > /etc/hostname
}


setup_network() {
    network_install_packages
    network_enable_services
    configure_hostname
}
