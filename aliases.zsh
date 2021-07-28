##### GENERAL PURPOSE
alias open='xdg-open .'
alias opex='open;exit'
alias reset='cd; source .zshrc; clear'
alias sudoInstall='sudo dpkg -i'
alias tarxz='sudo tar -xf'
alias remove='rm -rf'

##### PROGRAMS
alias vsc='code .; exit'
alias txt='sudo gedit'

##### FILES/FOLDERS
alias desktop='cd; cd Desktop'
alias downloads='cd; cd Downloads'
alias projects='cd; cd projects'
alias play='projects;cd playground'
alias short='cd; cd .oh-my-zsh/custom; nano aliases.zsh'
alias shortcuts='short'

##### GIT
function add(){git add $@;}
function commit(){git commit -m $1;}
function commit.add(){git add $1;git commit -m $2;}
function commit.alias(){cd;cd .oh-my-zsh/custom;git commit -am $1;git push origin master;}

##### OTHER STUFF
function testt(){echo $1;}
