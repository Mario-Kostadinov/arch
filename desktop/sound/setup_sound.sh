#!/bin/bash
sound_install_apps() {
    install_package "pipewire"
    install_package "wireplumber"
    install_package "pipewire-pulse"
    install_package "pipewire-audio"
    install_package "pipewire-alsa"
    install_package "easyeffects"
}

sound_services() {
 systemctl --user enable --now pipewire 
 systemctl --user enable --now pipewire-pulse
 systemctl --user enable --now wireplumber
}


setup_sound() {
    sound_install_apps
    sound_services
}
