echo "Replace bluetooth GUI with TUI"

myarchy-pkg-add bluetui
myarchy-pkg-drop blueberry

if ! grep -q "myarchy-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/myarchy-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
