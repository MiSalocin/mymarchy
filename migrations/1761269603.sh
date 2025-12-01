echo "Add right-click terminal action to waybar myarchy menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f "$WAYBAR_CONFIG" ]] && ! grep -A5 '"custom/myarchy"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "myarchy-menu",/a\    "on-click-right": "myarchy-launch-terminal",' "$WAYBAR_CONFIG"
fi
