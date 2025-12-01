echo "Move Myarchy Package Repository after Arch core/extra/multilib and remove AUR"

myarchy-refresh-pacman
sudo pacman -Syu --noconfirm
