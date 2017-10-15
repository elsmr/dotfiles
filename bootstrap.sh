#!/usr/bin/env bash

# update to latest dotfiles
git pull origin master;

read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # copy dotfiles into home directory
    rsync -a --progress --no-perms --exclude ".git/" --exclude ".DS_Store" $(pwd)/.[^.]* ~
fi;