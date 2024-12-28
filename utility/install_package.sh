#/bin/bash

install_package() {
  local package=$1

  # Check if the package is already installed
  if pacman -Q "$package" > /dev/null 2>&1; then
    log "$package is already installed." 
  else
    # Attempt to install the package
    sudo pacman -S --noconfirm "$package" >> $LOG_FILE_LOCATION 

    # Verify if the package was successfully installed
    if pacman -Q "$package" > /dev/null 2>&1; then
      log "$package successfully installed!"
    else
      log "Error: $package failed to install."
    fi
  fi
}
