##### GENERAL PURPOSE
alias open='xdg-open .'
alias opex='open;exit'
alias reset='cd; source .zshrc; clear'
alias sudoInstall='sudo dpkg -i'
alias remove='rm -rf'
alias delete='remove'
alias off='systemctl poweroff -i'
alias reboot='systemctl reboot -i'
alias repairApt='sudo apt --fix-broken install'
alias tar.gz='tar -xvzf '
alias tar.bz2='tar -xvjf '
alias tar.xz='sudo tar -xf'

##### PROGRAMS
alias vsc='code .; exit'
alias txt='sudo gedit'
alias install.nvm='curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash'
#next two lines are nvm manual config for the .somethingrc (eg: .zshrc)
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#after the previous two, add zsh-autosuggestions and zsh-syntax-highlighting to plugins=(git) in .zshrc
alias install.firebase='curl -sL https://firebase.tools | bash'

##### FILES/FOLDERS
alias desktop='cd; cd Desktop'
alias downloads='cd; cd Downloads'
alias projects='cd; cd projects'
alias play='projects;cd playground'
alias short='cd; cd .oh-my-zsh/custom; nano aliases.zsh'
alias shortcuts='short'
alias hugo='projects; cd hugo'
alias hugo.latest='hugo; cd JM-Cleaner-5.0'
alias zshrc='cd; nano .zshrc'

##### GIT
alias git.name='git config --global user.name'
alias git.email='git config --global user.email'
function add(){git add $@;}
function commit(){git commit -am $1;}
function commit.add(){git add $1;git commit -m $2;}
function push(){git push -u origin master;}
function push.notmaster(){git push -u origin $1;}
function commit.alias(){cd;cd .oh-my-zsh/custom;git add aliases.zsh;git commit -m $1;git push origin master;}
function git.email.set(){git config user.email $1}
function git.email.setG(){git config --global user.email $1}
function git.email.naranja(){git config --global user.email juan.aguirre@naranja.com;}
function git.email.juan(){git config --global user.email jf_aguirre@hotmail.com;}

##### OTHER STUFF
function testt(){echo $1;}
function prettierconfig(){echo '{}' > .prettierrc}
function prettierconfig.full(){echo '{\n\t"singleQuote": true,\n\t"trailingComma": "all",\n\t"semi": false,\n\t"tabWidth": 2,\n\t"arrowParens": "always"\n}' > .prettierrc}
alias gnomeTweaks='sudo apt install gnome-tweaks'
alias autoSuggestions='git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
alias syntaxHighlighting='git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
alias reactBootstrap='npm install react-bootstrap bootstrap'
alias nodeSass='npm install node-sass@4.14.1'
alias ssh.gen='ssh-keygen -t rsa -b 4096 -C'
##### General info for new installs
#Themes
# Applications --> Dracula / WhiteSur-dark
# Cursors --> McMojave-cursors
# Icons --> Sweet-Purple / WhiteSur-dark
# Shell --> Flat-Remix-Miami-Dark-fullPanel / WhiteSur-dark
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

