# navigation
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# general
alias g git
alias hosts='sudo $EDITOR /etc/hosts'
alias git hub

# typos
alias gti git
alias brwe brew

# updating
alias brew_update "brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune"
alias npm_update "npm i npm -g; npm update -g"
alias gem_update "sudo gem update --system; sudo gem update --no-document"
alias mac_update "sudo softwareupdate -iva"
alias update "mac_update; gem_update;"