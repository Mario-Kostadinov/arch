#!/bin/bash
	
install_base_packages() {
    pacstrap -K /mnt "base base-devel linux linux-firmware linux-headers amd-ucode" 
}
