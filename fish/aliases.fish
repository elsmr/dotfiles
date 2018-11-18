# navigation
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# general
alias git hub
alias g git
alias hosts='sudo $EDITOR /etc/hosts'
alias d docker
alias dcom docker-compose
alias nodejs node
alias nvm fnm

# typos
alias gti git
alias brwe brew

# updating
alias update_brew "brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune"
alias update_npm "npm i npm -g; npm update -g"
alias update_gems "sudo gem update --system; sudo gem update --no-document"
alias update_mac "sudo softwareupdate -ia --verbose"
alias update_apps "mas upgrade"
alias update "update_mac; update_apps; update_gems; update_brew; update_npm; fisher u"
