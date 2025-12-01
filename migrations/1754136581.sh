echo "Start screensaver automatically after 1 minute and stop before locking"

if ! grep -q "myarchy-launch-screensaver" ~/.config/hypr/hypridle.conf; then
  myarchy-refresh-hypridle
  myarchy-refresh-hyprlock
fi
