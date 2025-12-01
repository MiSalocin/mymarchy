echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/myarchy/themes/osaka-jade ]]; then
  rm -rf ~/.config/myarchy/themes/osaka-jade
  git -C ~/.local/share/myarchy checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/myarchy/themes/osaka-jade ~/.config/myarchy/themes/osaka-jade
fi
