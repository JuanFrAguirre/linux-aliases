alias desktop='cd; cd Desktop'
alias downloads='cd; cd Downloads'
alias projects='cd; cd projects'
alias play='projects;cd playground'
alias vsc='code .; exit'
alias open='xdg-open .'
alias opex='open;exit'
alias txt='sudo gedit'
alias short='cd; cd .oh-my-zsh/custom; nano aliases.zsh'
alias shortcuts='short'
alias reset='cd; source .zshrc; clear'
alias sudoInstall='sudo dpkg -i'
alias tarxz='sudo tar -xf'
alias remove='rm -rf'

##### GIT
function commit () { git add "$1"; git commit -m "$2"; }
function alias_commit () { cd;cd .oh-my-zsh/custom; git commit -am "$1"; }
function makedir () { mkdir "$@"; }
