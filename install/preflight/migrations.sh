MYARCHY_MIGRATIONS_STATE_PATH=~/.local/state/myarchy/migrations
mkdir -p $MYARCHY_MIGRATIONS_STATE_PATH

for file in ~/.local/share/myarchy/migrations/*.sh; do
  touch "$MYARCHY_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
