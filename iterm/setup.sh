#!/usr/bin/env bash

# symlink prefs into ~/.iterm2
ln -sf . $(pwd)/com.googlecode.iterm2.plist ~/.iterm2

# tell iterm to load prefs from ~/.iterm2
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm2"
