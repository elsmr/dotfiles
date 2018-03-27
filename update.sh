#!/usr/bin/env bash

# update to latest dotfiles
git pull origin master

# Run update for all tools (comment out what you don't need or want)
( cd homebrew && ./update.sh )
( cd vscode && ./update.sh )