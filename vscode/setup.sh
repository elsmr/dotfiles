#!/usr/bin/env bash

if ! which code > /dev/null; then
    # Exit if vscode is not installed
    if ! which code > /dev/null; then
        echo "code is not installed ⌨️"
        exit 1
    fi
fi

# get absolute path of script
dir=$(dirname $(realpath $0))

# install extensions
while read extension; do
  code --install-extension $extension
done < $dir/extensions

# symlink settings
ln -sfv $dir/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sfv $dir/settings.json ~/Library/Application\ Support/Code\ -\ Insiders/User/settings.json
ln -sfv $dir/keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
ln -sfv $dir/keybindings.json ~/Library/Application\ Support/Code\ -\ Insiders/User/keybindings.json

# symlink snippets
rm -rf ~/Library/Application\ Support/Code/User/snippets
rm -rf ~/Library/Application\ Support/Code\ -\ Insiders/User/snippets
ln -sfnv $dir/snippets ~/Library/Application\ Support/Code/User/snippets
ln -sfnv $dir/snippets ~/Library/Application\ Support/Code\ -\ Insiders/User/snippets
