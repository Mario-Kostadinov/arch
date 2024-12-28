#!/bin/bash

log() {
    local current_time
    current_time=$(date "+%Y-%m-%d %H:%M:%S")
    local log_to_screen=$2
    echo $log_to_screen

    if [ "$log_to_screen" = "true" ]; then
	echo "[$current_time] $1"
    fi
    
    sudo echo "[$current_time] $1" >> "$LOG_FILE_LOCATION"
}

log_to_screen() {
   log "$1" "true" 
}

delete_log_file() {
  sudo rm -f $LOG_FILE_LOCATION 
}

create_log_file() {
    sudo mkdir -p /var/log/mario
    sudo chown $USER:$USER /var/log/mario
    echo $USER

    touch $LOG_FILE_LOCATION
    sudo chown $USER:$USER "$LOG_FILE_LOCATION"


}
