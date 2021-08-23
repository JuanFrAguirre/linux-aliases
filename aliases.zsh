##### GENERAL PURPOSE
alias open='xdg-open .'
alias opex='open;exit'
alias reset='cd; source .zshrc; clear'
alias sudoInstall='sudo dpkg -i'
alias rm='rm -rf'
alias remove='rm'
alias delete='rm'
alias off='systemctl poweroff -i'
alias reboot='systemctl reboot -i'
alias repairApt='sudo apt --fix-broken install'
alias tar.gz='tar -xvzf '
alias tar.bz2='tar -xvjf '
alias tar.xz='sudo tar -xf'
alias say='echo'
alias say.black='say $(tput setaf 0)'
alias say.red='say $(tput setaf 1)'
alias say.green='say $(tput setaf 2)'
alias say.yellow='say $(tput setaf 3)'
alias say.blue='say $(tput setaf 4)'
alias say.magenta='say $(tput setaf 5)'
alias say.cyan='say $(tput setaf 6)'
alias say.white='say $(tput setaf 7)'
function replace(){ sed -i -e "s/"$1"/"$2"/g" $3 }
function createFile(){ echo $2 > $1 }
function findSth(){ if grep -Fq $1 $2; then echo true; else echo false;fi; }



##### PROGRAMS
alias txt='sudo gedit'
alias install.nvm='curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash'
#next two lines are nvm manual config for the .somethingrc (eg: .zshrc)
#export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
#after the previous two, add zsh-autosuggestions and zsh-syntax-highlighting to plugins=(git) in .zshrc


##### FILES/FOLDERS
alias desktop='cd; cd Desktop'
alias downloads='cd; cd Downloads'
alias projects='cd; cd projects'
alias play='projects;cd playground'
alias short='cd; cd .oh-my-zsh/custom; nano aliases.zsh'
alias shortcuts='short'
alias naranja='projects; cd naranja'
alias hugo='projects; cd hugo'
alias hugo.latest='hugo; cd JM-Cleaner-5.0'
alias zshrc='cd; nano .zshrc'


##### GIT
alias git.name='git config --global user.name'
alias git.email='git config --global user.email'
function add(){ git add $@; }
function commit(){ git commit -am $1; }
function commit.add(){ git add $1;git commit -m $2; }
function push(){ git push -u origin master; }
function push.notmaster(){ git push -u origin $1; }
function commit.alias(){ cd;cd .oh-my-zsh/custom;git add aliases.zsh;git commit -m $1;git push origin master; }
function git.email.local(){ git config user.email $1; }


##### VARIABLES
vReactBootstrap='react-bootstrap bootstrap'
vNodeSass='node-sass@4.14.1'


##### CODING
alias vsc='code .; exit'
alias install.firebase='curl -sL https://firebase.tools | bash'
alias prettierrc='prettierconfig'
alias prettierrc.full='prettierconfig.full'
alias indexjs='createFile "src/index.js" "import React from \"react\"\nimport ReactDOM from \"react-dom\"\nimport \"./index.css\"\nimport App from \"./App\"\n\nReactDOM.render(\n\t<React.StrictMode>\n\t\t<App />\n\t</React.StrictMode>,\n\tdocument.getElementById(\"root\")\n)"'
alias appjs='createFile "src/App.js" "function App() {\n\treturn (\n\t\t<>\n\t\t\t<h1>Welcome to React!</h1>\n\t\t</>\n\t)\n}\n\nexport default App"'
alias indexcss='createFile "src/index.css" ""'
alias browsernone='replace "react-scripts start" "BROWSER=none react-scripts start" package.json'
function react(){ npx create-react-app $1 && cd $1 && remove ./src && mkdir src && indexjs && appjs && indexcss && prettierconfig.full && browsernone && clear -x && say 'All ready!\nRun '$(say.cyan)vsc $(say.white)to start coding!; }
function react.tailwind(){ npx create-react-app $1 && cd $1 && remove ./src && mkdir src && indexjs && appjs && indexcss && prettierconfig.full && clear -x && install.tailwind && clear -x && say All ready!;$(say.cyan)Tailwind $(say.white)was added succesfully!\nRun $(say.cyan)vsc $(say.white)to start coding!; }
function prettierconfig(){ createFile '.prettierrc' '{}'; }
function prettierconfig.full(){ createFile '.prettierrc' '{\n\t"singleQuote": true,\n\t"trailingComma": "all",\n\t"semi": false,\n\t"tabWidth": 2,\n\t"arrowParens": "always"\n}'; }
function reactBootstrap(){ if [ $1 = 'n' ];then npm i $vReactBootstrap;else yarn add $vReactBootstrap;fi; }
function nodeSass(){ if [ $1 = 'n' ];then npm i $vNodeSass;else yarn add $vNodeSass;fi; }
function craco.replace(){ if [ $(findSth 'BROWSER=none' package.json) = true ];then replace 'react-scripts start' 'craco start' package.json;else replace 'react-scripts start' 'BROWSER=none craco start' package.json ;fi;replace 'react-scripts build' 'craco build' package.json; replace 'react-scripts test' 'craco test' package.json; }
function install.tailwind(){ yarn add -D tailwindcss@npm:@tailwindcss/postcss7-compat postcss@^7 autoprefixer@^9 && echo 'step1 success' && yarn add @craco/craco && echo 'step2 success' && craco.replace  && echo 'step3 success' && createFile 'craco.config.js' 'module.exports={style:{postcss:{plugins:[require("tailwindcss"),require("autoprefixer")]}}}'  && echo 'step4 success' && npx tailwindcss-cli@latest init  && echo 'step5 success' && replace 'purge: \[\],' 'purge: \["\.\/src\/\*\*\/\*\.\{js,jsx,ts,tsx\}", "\.\/public\/index.html"\],' 'tailwind.config.js' && echo 'step6 success' && delete ./src/index.css && echo 'step7 success' && createFile  './src/index.css' '@tailwind base;\n@tailwind components;\n@tailwind utilities;' && echo 'step8 success'; }



##### OTHER STUFF
function testt(){ echo $1; }
function checkEquality() { [[ "$1" =~ "$2" ]] && say "They're equal" || say "They're not equal"; }
alias gnomeTweaks='sudo apt install gnome-tweaks'
alias autoSuggestions='git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
alias syntaxHighlighting='git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'
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
#Extensions
# DashToPanel
# Resource Monitor
# User Themes
# 
#
#
#
#
#

