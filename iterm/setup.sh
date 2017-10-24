#!/usr/bin/env bash

# copy prefs into ~/.iterm2
rsync -a --progress --no-perms --exclude ".git/" --exclude ".DS_Store" ./com.googlecode.iterm2.plist ~/.iterm2

# tell iterm to load prefs from ~/.iterm2
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm2"
