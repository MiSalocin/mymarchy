echo "Install Impala as new wifi selection TUI"

if myarchy-cmd-missing impala; then
  myarchy-pkg-add impala
  myarchy-refresh-waybar
fi
