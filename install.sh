#!/usr/bin/bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &


DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


# Run installer scripts
for INSTALLER in `find $DOTFILES_DIR/install-scripts`
do
  [ -f $INSTALLER ] && source $INSTALLER
done


# Symlink and source the dotfiles
ln -sv "$DOTFILES_DIR/.bash_profile" ~
ln -sv "$DOTFILES_DIR/.inputrc" ~
ln -sv "$DOTFILES_DIR/.gitconfig" ~
ln -sv "$DOTFILES_DIR/.vimrc" ~

source "~/.bash_profile"
source "~/.inputrc"
source "~/.vimrc"
