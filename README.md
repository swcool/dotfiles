# Dotfiles

This repository includes all of my custom dotfiles. They should be cloned to your home Projects directory so that the path is ~/Projects/dotfiles/. The included setup script creates symlinks from your home directory to the files which are located in ~/Projects/dotfiles/.

<img
src="https://cdn-images-1.medium.com/max/800/1*ayVl2ie6CS0Flqr8TxoYgQ.png"
width="250">

## Installation
0. Backup your home original dotfiles if you need.

1. Get the repository whereever you want. I like to keep in ~/Projects/dotfiles

    git clone https://github.com/swcool/dotfiles.git

2. Using homebrew to install apps such as zsh, tmux, git, and vim

    cd dotfiles; setup/homebrew.sh

3. Symlink to dotfiles to home directory as `~/.*`

    setup/create_symlink.sh

4. Start using your dotfiles' apps

## Repository Structure

* bin/   -  Utility executable scripts, should be copy to ~/bin/
* git/   -  Git related dotfiles and other configuration files.
* setup/ -  Installation files for dotfiles' apps
* tmux/  -  Tmux related dotfiles.
* vim/   -  Vim  related dotfiles and other configuration files.
* zsh/   -  ZSH related dotfiles, aliases and other files.


## Awesome Dotfiles
- A curated list of dotfiles resources, the reference project is
[Awesome Dotfiles](https://github.com/webpro/awesome-dotfiles).
- A list of Github Popular [Dotfiles repositories](https://github.com/search?q=topic%3Adotfiles&type=Repositories).
- [dotfiles.github.io](http://dotfiles.github.io) - Your unofficial
  guide to dotfiles on GitHub.
