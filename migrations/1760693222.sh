echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/myarchy-cmd-tzupdate/myarchy-launch-floating-terminal-with-presentation myarchy-tz-select/g' ~/.config/waybar/config.jsonc
