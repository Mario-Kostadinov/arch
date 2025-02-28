#!/bin/bash
source .env
source ./utility/install_package.sh
source ./utility/install_package_aur.sh
source ./utility/log.sh

source ./base/disk/format_disk.sh
source ./base/disk/mount_partitions.sh
source ./base/disk/generate_fstab.sh
#source ./base/disk/encryption.sh

source ./base/users/add_normal_user.sh
source ./base/users/setup_sudo.sh
source ./base/bootloader/grub/setup_grub.sh

source ./base/network/setup_network.sh

source ./base/localisation/setup_localisation.sh

source ./base/time/setup_time.sh

source ./base/packages.sh

base_installation() {
    format_disk
    mount_partitions
    install_base_packages
    generate_fstab
}

chroot_installation() {
    setup_network
    setup_localisation
    add_normal_user
    setup_sudo
    setup_time
    
    mkinitcpio -P
    setup_grub
}

main() {
    echo "Starting installation of Arch Linux"
    base_installation
}

main
