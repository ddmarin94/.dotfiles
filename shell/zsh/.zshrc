for conf in "$PWD/.dotfiles/shell/zsh/"*.zsh; do
  source "${conf}"
done
unset conf
