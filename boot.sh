#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export MYARCHY_ONLINE_INSTALL=true

ansi_art='
 ▄███████████▄   ▄█   █▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███   ███ ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███   ███ ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███   ███ ███▄▄▄███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███   ███ ▀▀▀▀▀▀███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███   ███ ▄██   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███   ███ ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█   ███   █▀   ▀█████▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                      ███   █▀                                  '

clear
echo -e "\n$ansi_art\n"

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to basecamp/omarchy
MYARCHY_REPO="${MYARCHY_REPO:-misalocin/myarchy}"

echo -e "\nCloning Myarchy from: https://github.com/${MYARCHY_REPO}.git"
rm -rf ~/.local/share/myarchy/
git clone "https://github.com/${MYARCHY_REPO}.git" ~/.local/share/myarchy >/dev/null

# Use custom branch if instructed, otherwise default to master
MYARCHY_REF="${MYARCHY_REF:-master}"
if [[ $MYARCHY_REF != "master" ]]; then
  echo -e "\e[32mUsing branch: $MYARCHY_REF\e[0m"
  cd ~/.local/share/myarchy
  git fetch origin "${MYARCHY_REF}" && git checkout "${MYARCHY_REF}"
  cd -
fi

echo -e "\nInstallation starting..."
source ~/.local/share/myarchy/install.sh
