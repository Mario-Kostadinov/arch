#!/bin/bash
time_set_time_zone() {
    # Check if TIMEZONE is set
    if [[ -z "$TIMEZONE" ]]; then
        echo "ERROR: TIMEZONE is not set. Please set it in the environment or .env file."
        exit 1
    fi
    
    echo "Setting the time zone to $TIMEZONE..."
    
    # Set the time zone using the TIMEZONE variable
    if [[ -f "/usr/share/zoneinfo/$TIMEZONE" ]]; then
        ln -sf "/usr/share/zoneinfo/$TIMEZONE" /etc/localtime
    else
        echo "ERROR: Time zone $TIMEZONE is invalid or not found."
        exit 1
    fi

    echo "Generating hardware clock settings..."
    hwclock --systohc
    
    # Setting up time synchronization (systemd-timesyncd)
    echo "Enabling NTP for time synchronization..."
    systemctl enable systemd-timesyncd
    systemctl start systemd-timesyncd

    echo "Time zone and synchronization set successfully."
}

setup_time() {
    timedatectl set-ntp true
    time_set_time_zone
}
