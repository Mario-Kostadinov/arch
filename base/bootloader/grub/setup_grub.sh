#!/bin/bash

setup_grub() {
    install_package "grub"
    install_package "efibootmgr"
    install_package "os-prober"

    sudo grub-install
    sudo grub-mkconfig -o /boot/grub/grub.cfg
}
