## Install Homebrew  http://brew.sh

## For M1 on mac bigsur
## /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

###################################

## Warning: /opt/homebrew/bin is not in your PATH.
##   Instructions on how to configure your shell for Homebrew
##   can be found in the 'Next steps' section below.

## ==> Next steps:
## - Run these two commands in your terminal to add Homebrew to your PATH:
##     echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/shaneweng/.zprofile
##     eval "$(/opt/homebrew/bin/brew shellenv)"
## - Run `brew help` to get started
## - Further documentation: 
##     https://docs.brew.sh
###################################

## Below Original from https://raw.githubusercontent.com/mathiasbynens/dotfiles/master/brew.sh
#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
# brew install bash
# brew install bash-completion2

# Switch to using brew-installed bash as default shell
# if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
#   echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
#   chsh -s /usr/local/bin/bash;
# fi;

# Install `wget` with IRI support.
##  brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install more recent versions of some macOS tools.
##  brew install vim --with-override-system-vi
##  brew install grep
brew install openssh
brew install screen
# brew install homebrew/php/php56 --with-gmp

# Install font tools.
# brew tap bramstein/webfonttools
# brew install sfnt2woff
# brew install sfnt2woff-zopfli
# brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
# brew install aircrack-ng
# brew install bfg
# brew install binutils
# brew install binwalk
# brew install cifer
# brew install dex2jar
# brew install dns2tcp
# brew install fcrackzip
# brew install foremost
# brew install hashpump
# brew install hydra
# brew install john
# brew install knock
# brew install netpbm
# brew install nmap
# brew install pngcheck
# brew install socat
# brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
# brew install tcptrace
# brew install ucspi-tcp # `tcpserver` etc.
# brew install xpdf
# brew install xz

# Install other useful binaries.
# brew install ack
# brew install exiv2
# brew install git
# brew install git-lfs
# brew install imagemagick --with-webp
# brew install lua
# brew install lynx
# brew install p7zip
# brew install pigz
# brew install pv
brew install rename
brew install rlwrap
brew install ssh-copy-id
brew install tree
# brew install vbindiff
# brew install zopfli

# tmux highlight-copy-clipboard
# https://robots.thoughtbot.com/tmux-copy-paste-on-os-x-a-better-future
brew install tmux
brew install reattach-to-user-namespace

# Emacs
# brew install emacs --with-cocoa
# brew linkapps emacs

# Databases
## MongoDB
# brew install mongodb

## CMake
brew install cmake

# CocoaPod for ios
# brew install cocoapods

# View image from terminal
brew install feh

# Install Python 3 with pip3
brew install python3

## Install Python pip3 virtualenv
#     pip3 install --upgrade virtualenv

### Install Machine Learning package inside virtualenv
# pip3 install --upgrade jupyter matplotlib numpy pandas scipy scikit-learn 

## Note: python3 in /usr/local/bin/python3 python2 in /usr/bin/python
# Remove outdated versions from the cellar.
brew cleanup
