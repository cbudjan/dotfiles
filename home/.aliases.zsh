# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

alias c=clear

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

alias f='open -a Finder ./'

alias brewing="brew update && brew upgrade && brew cleanup && brew prune"
alias cpu='top -o cpu' # cpu
alias mem='top -o rsize' # memory
alias ip="curl icanhazip.com"

# alias last command
a() {
  x=`history 1 | sed 's/.\{7\}//'`;
  alias ${1}="${x}";
}