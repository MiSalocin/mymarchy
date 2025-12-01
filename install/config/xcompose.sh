# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
include "%H/.local/share/myarchy/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$MYMARCHY_USER_NAME"
<Multi_key> <space> <e> : "$MYMARCHY_USER_EMAIL"
EOF
