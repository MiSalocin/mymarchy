echo "Install swayOSD to show volume status"

if myarchy-cmd-missing swayosd-server; then
  myarchy-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
