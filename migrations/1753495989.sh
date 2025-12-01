echo "Allow updating of timezone by right-clicking on the clock (or running myarchy-cmd-tzupdate)"

if myarchy-cmd-missing tzupdate; then
  bash "$MYARCHY_PATH/install/config/timezones.sh"
  myarchy-refresh-waybar
fi
