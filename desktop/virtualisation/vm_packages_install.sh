#!/bin/bash

vm_packages_install() {
    install_package "qemu-base"
    install_package "virt-manager"
    install_package "dnsmasq"
}
