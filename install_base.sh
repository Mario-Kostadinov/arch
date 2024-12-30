#!/bin/bash
source .env
source ./utility/install_package.sh
source ./utility/install_package_aur.sh
source ./utility/log.sh

source ./base/disk/format_disk.sh
source ./base/disk/mount_partitions.sh
source ./base/disk/generate_fstab.sh
#source ./base/disk/encryption.sh

source ./base/network/setup_network.sh

source ./base/packages.sh

base_installation() {
    format_disk
    mount_partitions
    install_base_packages
    generate_fstab
}

chroot_installation() {
    setup_network
}

desktop_installation() {

}

main() {
    echo "Starting installation of Arch Linux"
    base_installation
}

main
