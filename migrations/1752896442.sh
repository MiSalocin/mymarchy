echo "Replace volume control GUI with a TUI"

if myarchy-cmd-missing wiremix; then
  myarchy-pkg-add wiremix
  myarchy-pkg-drop pavucontrol
  myarchy-refresh-applications
  myarchy-refresh-waybar
fi
