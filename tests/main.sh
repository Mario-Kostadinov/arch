#!/bin/bash

source ../.env
source ../utility/log.sh

main() {
    log "Hello world"
    log_to_screen "Hello"
}

main
