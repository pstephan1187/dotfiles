#!/usr/bin/bash

# Update App Store apps
sudo softwareupdate -i -a

# Update Homebrew (Cask) & packages
brew update
brew upgrade

phpbrew self-update

# Update npm & packages
npm update -g
