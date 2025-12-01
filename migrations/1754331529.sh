echo "Update Waybar for new Myarchy menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  myarchy-refresh-waybar
fi
