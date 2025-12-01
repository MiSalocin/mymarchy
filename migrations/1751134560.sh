echo "Add UWSM env"

export MYARCHY_PATH="$HOME/.local/share/myarchy"
export PATH="$MYARCHY_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export MYARCHY_PATH=$HOME/.local/share/myarchy
export PATH=$MYARCHY_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
myarchy-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/myarchy/migrations
touch ~/.local/state/myarchy/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old Myarchy installs
myarchy-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $MYARCHY_PATH/migrations/1756060611.sh
touch ~/.local/state/myarchy/migrations/1756060611.sh

bash myarchy-update-perform
