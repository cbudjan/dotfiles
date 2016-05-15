alias c="clear"
alias f='open -a Finder ./'
alias d="cd ~/Dropbox"
alias dl="cd ~/Downloads"

# Empty the Trash on all mounted volumes and the main HDD. then clear the useless sleepimage
alias emptytrash=" \
    sudo rm -rfv /Volumes/*/.Trashes; \
    sudo rm -rfv ~/.Trash; \
    sudo rm -v /private/var/vm/sleepimage; \
    sudo rm -rfv /private/var/log/asl/*.asl \
"

alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; brew prune; sudo npm update npm -g; sudo npm update -g; sudo gem update'

# Recursively delete `.DS_Store` files
alias cleanup_dsstore="find . -name '*.DS_Store' -type f -ls -delete"

alias brewing="brew update && brew upgrade && brew cleanup && brew prune"
alias cpu='top -o cpu' # cpu
alias mem='top -o rsize' # memory
alias ip="curl icanhazip.com"