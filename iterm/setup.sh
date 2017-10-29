#!/usr/bin/env bash

# get absolute path of script
dir=$(dirname $(realpath $0))

# symlink prefs into ~/.iterm2
mkdir -p ~/.iterm2
ln -sfnv $dir/com.googlecode.iterm2.plist ~/.iterm2/com.googlecode.iterm2.plist

# tell iterm to load prefs from ~/.iterm2
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm2"
