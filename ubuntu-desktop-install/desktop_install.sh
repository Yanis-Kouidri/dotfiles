#!/bin/bash

PACKAGES_FILE="apt_packages.txt"

sudo apt update && sudo apt full-upgrade -y
sudo apt autoremove -y

grep -vE '^\s*#|^\s*$' "$PACKAGES_FILE" | xargs -r sudo apt install -y

pipx ensurepath

./apps_install.sh

