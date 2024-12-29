#!/bin/bash
source .env
source ./utility/install_package.sh
source ./utility/install_package_aur.sh
source ./utility/log.sh

source ./base/disk/format_disk.sh
source ./base/disk/mount_partitions.sh
source ./base/disk/generate_fstab.sh
source ./base/disk/encryption.sh

source ./base/network/setup_network.sh

main() {
    echo "Starting installation of Arch Linux"
    format_disk
    mount_partitions
    generate_fstab

    setup_network
}

main
