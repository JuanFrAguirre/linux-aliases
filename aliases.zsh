##### GENERAL PURPOSE
alias open='xdg-open .'
alias opex='open;exit'
alias reset='cd; source .zshrc; clear'
alias sudoInstall='sudo dpkg -i'
alias tarxz='sudo tar -xf'
alias remove='rm -rf'
alias delete='remove'
alias off='shutdown -h now'
alias reboot='shutdown -r now'
alias repairApt='sudo apt --fix-broken install'

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
alias hugo='projects; cd hugo'

##### GIT
function add(){git add $@;}
function commit(){git commit -am $1;}
function commit.add(){git add $1;git commit -m $2;}
function push(){git push -u origin master;}
function push.notmaster(){git push -u origin $1;}
function commit.alias(){cd;cd .oh-my-zsh/custom;git commit -am $1;git push origin master;}

##### OTHER STUFF
alias gnomeTweaks='sudo apt install gnome-tweaks'
function testt(){echo $1;}


##### General info for new installs
#Themes
# Applications --> Dracula
# Icons --> Sweet-Purple
# Shell --> Flat-Remix-Miami-Dark-fullPanel
#
#Shell
# oh-my-zsh under zsh with power10k customization
#
#Fonts
# CaskaydiaCoveNerdFont (for ligatures)
#
#Panel/Dash
# DashToPanel extension
#
#
#

