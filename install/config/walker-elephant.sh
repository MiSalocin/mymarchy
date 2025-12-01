#!/bin/bash

# Create pacman hook to restart walker after updates
sudo mkdir -p /etc/pacman.d/hooks
sudo tee /etc/pacman.d/hooks/walker-restart.hook > /dev/null << EOF
[Trigger]
Type = Package
Operation = Upgrade
Target = walker
Target = walker-debug
Target = elephant*

[Action]
Description = Restarting Walker services after system update
When = PostTransaction
Exec = $MYMARCHY_PATH/bin/myarchy-restart-walker
EOF

# Link the visual theme menu config
mkdir -p ~/.config/elephant/menus
ln -snf $MYMARCHY_PATH/default/elephant/myarchy_themes.lua ~/.config/elephant/menus/myarchy_themes.lua
