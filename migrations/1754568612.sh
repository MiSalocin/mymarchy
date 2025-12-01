echo "Update Waybar config to fix path issue with update-available icon click"

if grep -q "alacritty --class Myarchy --title Myarchy -e myarchy-update" ~/.config/waybar/config.jsonc; then
  sed -i 's|\("on-click": "alacritty --class Myarchy --title Myarchy -e \)myarchy-update"|\1myarchy-update"|' ~/.config/waybar/config.jsonc
  myarchy-restart-waybar
fi
