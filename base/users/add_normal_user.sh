#!/bin/bash
add_normal_user() {
    useradd -m -G "$USER_GROUPS" -s /bin/bash "$USERNAME"
    passwd "$USERNAME"
    chown -R $USERNAME "/home/$USERNAME"
}
