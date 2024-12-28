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

main() {
 logs
 log_to_screen "---Starting Desktop Install---"
 sound
 log_to_screen "Installation finished"
}

main
