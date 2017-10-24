#!/usr/bin/env bash

if ! which code > /dev/null; then
    # Add VSCode bin directory to PATH
    export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    
    # Exit if vscode is not installed
    if ! which code > /dev/null; then
        echo "code is not installed ⌨️"
        exit 1
    fi
fi

# install extensions
while read extension; do
  code --install-extension $extension
done < ./extensions

# symlink settings and snippets (replacing the current files)
ln -sf $(pwd)/settings.json ~/Library/Application\ Support/Code/User/settings.json
ln -sf $(pwd)/snippets/ ~/Library/Application\ Support/Code/User/snippets
