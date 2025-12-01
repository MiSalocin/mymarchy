echo "Uniquely identify terminal apps with custom app-ids using myarchy-launch-tui"

# Replace terminal -e calls with myarchy-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/myarchy-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use myarchy-launch-or-focus with myarchy-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|myarchy-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.myarchy\.Wiremix -e wiremix|myarchy-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
