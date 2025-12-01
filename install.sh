#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Myarchy locations
export MYARCHY_PATH="$HOME/.local/share/myarchy"
export MYARCHY_INSTALL="$MYARCHY_PATH/install"
export MYARCHY_INSTALL_LOG_FILE="/var/log/myarchy-install.log"
export PATH="$MYARCHY_PATH/bin:$PATH"

# Install
source "$MYARCHY_INSTALL/helpers/all.sh"
source "$MYARCHY_INSTALL/preflight/all.sh"
source "$MYARCHY_INSTALL/packaging/all.sh"
source "$MYARCHY_INSTALL/config/all.sh"
source "$MYARCHY_INSTALL/login/all.sh"
source "$MYARCHY_INSTALL/post-install/all.sh"
