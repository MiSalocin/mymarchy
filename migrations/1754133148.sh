echo "Update Waybar CSS to dim unused workspaces"

if ! grep -q "#workspaces button\.empty" ~/.config/waybar/style.css; then
  myarchy-refresh-config waybar/style.css
  myarchy-restart-waybar
fi
