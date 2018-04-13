#!/usr/bin/bash

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install more recent versions of some macOS tools.
brew install grep
brew install openssh


brew tap caskroom/cask
brew tap caskroom/versions

brew install git
brew install imagemagick
brew install wget
