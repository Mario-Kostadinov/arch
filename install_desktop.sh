#!/bin/bash
source .env
source ./utility/install_package.sh
source ./utility/install_package_aur.sh
source ./utility/log.sh

source ./desktop/sound/setup_sound.sh
source ./desktop/wayland/compositors/sway/setup_sway.sh

logs() {
    delete_log_file
    create_log_file
}

sound() {
    log_to_screen "Sound setup"
    setup_sound
    log_to_screen "Sound setup end"
}

display_manager() {
    log_to_screen "Display Manager setup"
    setup_sway
    log_to_screen "Display Manager setup end"
}

setup_all() {
    sound
    display_manager
}

main() {
 logs
 log_to_screen "---Starting Desktop Install---"
 #setup_all
 display_manager
 log_to_screen "Installation finished"
}

main
