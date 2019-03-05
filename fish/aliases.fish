# navigation
alias ... "cd ../.."
alias .... "cd ../../.."
alias ..... "cd ../../../.."

# general
alias git hub
alias g git
alias hosts "sudo $EDITOR /etc/hosts"
alias d docker
alias dcom docker-compose
alias nodejs node
alias reload "source ~/.config/fish/config.fish"

# apps
alias chrome "open -a 'Google Chrome'"
alias firefox "open -a 'Firefox'"
alias firefox-dev "open -a 'Firefox Developer Edition'"
alias chrome-canary "open -a 'Google Chrome Canary'"
alias slack "open -a 'Slack'"
alias spotify "open -a 'Spotify'"
alias messenger "open -a 'Messenger'"
alias chr chrome
alias ff firefox

# typos
alias gti git
alias brwe brew
alias code. "code ."

# updating
alias update-brew "brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune"
alias update-npm "npm i npm -g; npm update -g"
alias update-gems "sudo gem update --system; sudo gem update --no-document"
alias update-mac "sudo softwareupdate -ia --verbose"
alias update-apps "mas upgrade"
alias update "update-mac; update-apps; update-gems; update-brew; update-npm; fisher u"
