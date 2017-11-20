#!/usr/bin/env bash
############################
# .create_symlink.sh
# This script creates symlinks from the home directory to any desired dotfiles
# in ~/Projects/dotfiles
############################

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

# create dotfiles_old
echo -n "Creating dotfiles_old for backup of existing dotfiles in ~ ..."
cd .. ; mkdir -p dotfiles_old
DOTFILES_OLD="$(cd dotfiles_old; pwd -P)"
echo $DOTFILES_OLD
echo "done"

# Pull latest files from GitHub: disable now and save it for the future
# cd $DOTFILES_DIR
# git submodule update --init --recursive # init git submodules
# git submodule foreach git pull origin master # pull latest versions of vendor submodules

# Symlink and report creation of link
create_symlink() {
  ln -sfn $1 $2
  echo "Symlinked ${1} -> ${2}"
}

# All the symlinks
# tmux
if [ ! -L $HOME/.tmux.conf ]; then
  mv $HOME/.tmux.conf $DOTFILES_OLD
  create_symlink $DOTFILES_DIR/tmux/tmux.conf $HOME/.tmux.conf
fi

# zsh
create_symlink $DOTFILES_DIR/zsh/zshrc $HOME/.zshrc
create_symlink $DOTFILES_DIR/zsh/aliases $HOME/.aliases

# bin
create_symlink $DOTFILES_DIR/bin/ssh-key $HOME/bin/ssh-key

# vim (Note: sync janus using "cd $HOME/.vim; rake")
create_symlink $DOTFILES_DIR/vim/vimrc.before $HOME/.vimrc.before
create_symlink $DOTFILES_DIR/vim/vimrc.after $HOME/.vimrc.after
create_symlink $DOTFILES_DIR/vim/janus/README.md $HOME/.janus/README.md
create_symlink $DOTFILES_DIR/vim/janus/vim-markdown $HOME/.janus/vim-markdown
create_symlink $DOTFILES_DIR/vim/janus/vim-vue $HOME/.janus/vim-vue

create_symlink $DOTFILES_DIR/vim/janus/auto-pairs $HOME/.janus/auto-pairs
create_symlink $DOTFILES_DIR/vim/janus/xmledit $HOME/.janus/xmledit
create_symlink $DOTFILES_DIR/vim/janus/vim-surround $HOME/.janus/vim-surround
create_symlink $DOTFILES_DIR/vim/janus/YouCompleteMe $HOME/.janus/YouCompleteMe
create_symlink $DOTFILES_DIR/vim/janus/supertab $HOME/.janus/supertab
create_symlink $DOTFILES_DIR/vim/janus/ultisnips $HOME/.janus/ultisnips

create_symlink $DOTFILES_DIR/vim/janus/markdown.snippets $HOME/.vim/ultisnips/markdown.snippets
create_symlink $DOTFILES_DIR/vim/janus/ultisnips.snippets $HOME/.vim/ultisnips/ultisnips.snippets

create_symlink $DOTFILES_DIR/vim/janus/vim-markdown-folding $HOME/.janus/vim-markdown-folding

# References
# https://github.com/kaicataldo/dotfiles/blob/master/bootstrap.sh
# https://github.com/michaeljsmalley/dotfiles/blob/master/makesymlinks.sh
