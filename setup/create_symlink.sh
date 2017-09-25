# https://github.com/kaicataldo/dotfiles/blob/master/bootstrap.sh

#!/usr/bin/env bash

# Warn user this script will overwrite current dotfiles
while true; do
  read -p "Warning: this will overwrite your current dotfiles. Continue? [y/n] " yn
  case $yn in
    [Yy]* ) break;;
    [Nn]* ) exit;;
    * ) echo "Please answer yes or no.";;
  esac
done

# Get the dotfiles directory's absolute path
DOTFILES_DIR="$(cd "$(dirname "$0")";cd ..; pwd -P)"

echo $DOTFILES_DIR
cd $DOTFILES_DIR

# Symlink and report creation of link
create_symlink() {
  ln -sfn $1 $2
  echo "Symlinked ${1} -> ${2}"
}

# All the symlinks
# tmux
create_symlink $DOTFILES_DIR/tmux/tmux.conf $HOME/.tmux.conf

# zsh
create_symlink $DOTFILES_DIR/zsh/zshrc $HOME/.zshrc
create_symlink $DOTFILES_DIR/zsh/aliases $HOME/.aliases

# bin
create_symlink $DOTFILES_DIR/bin/ssh-key $HOME/bin/ssh-key

