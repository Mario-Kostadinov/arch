#!/bin/bash

sway_packages_install() {
   install_package "sway" 
}

sway_links() {
    local config=~/projects/arch/desktop/wayland/compositors/sway/sway_config
    local sway_config=~/.config/sway/config

    ln -s $config $sway_config
}

setup_sway() {
   sway_packages_install 
   sway_links
}
