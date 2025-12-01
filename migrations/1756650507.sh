echo "Fix JetBrains font setting"

if [[ $(myarchy-font-current) == JetBrains* ]]; then
  myarchy-font-set "JetBrainsMono Nerd Font"
fi
