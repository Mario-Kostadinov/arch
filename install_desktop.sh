#!/bin/bash
source .env
source ./utility/install_package.sh
source ./utility/install_package_aur.sh
source ./utility/log.sh

source ./desktop/sound/setup_sound.sh

logs() {
    delete_log_file
    create_log_file
}

sound() {
    log_to_screen "---Sound setup---"
    setup_sound
    log_to_screen "---Sound setup end---"
}

setup_all() {
    sound
}

main() {
 logs
 log_to_screen "---Starting Desktop Install---"
 #setup_all 
 log_to_screen "Installation finished"
}

main
