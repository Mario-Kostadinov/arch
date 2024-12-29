#!/bin/bash
generate_fstab() {
    genfstab -U /mnt >> /mnt/etc/fstab
    tail -n $(wc -l < /mnt/etc/fstab) /mnt/etc/fstab
}
