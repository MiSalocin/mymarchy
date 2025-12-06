echo "Ensure you have package repository indexes matching your channel"
sudo pacman -Syyu --noconfirm


echo "Ensure all indexes and packages are up to date"
myarchy-refresh-pacman
sudo pacman -Syu --noconfirm


echo "Ensure emoji menu (Super + Ctrl + E) uses single column design"
myarchy-refresh-walker


