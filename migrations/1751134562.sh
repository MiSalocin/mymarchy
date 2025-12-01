echo "Ensure all indexes and packages are up to date"

myarchy-refresh-pacman
sudo pacman -Syu --noconfirm
