
# Git Aware Prompt
export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

export PS1="\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "
export SUDO_PS1="\[$bakred\]\u@\h\[$txtrst\] \w\$ "

# php for Laravel and local MYSQL
export PATH=/usr/local/mysql/bin:/Applications/MAMP/bin/php/php5.5.26/bin:$PATH

# aliases
alias sudo="sudo "

alias oat="open -a Atom"
alias oatb="oat ~/.bash_profile"
alias reprof=". ~/.bash_profile"
alias oats="sudo oat"

alias Desk="cd ~/Desktop"

# functions
function cdl { cd $1; ls; }
function cdla { cd $1; ls -la; }

# make dir and jump into dir.
function mkcd () {
	mkdir "$1"
	cd "$1"
}

# fun
function sayHello () {
	echo "Hello $1"
}

# Apple Show/Hide hidden files
function hiddenShow () {
	defaults write com.apple.finder AppleShowAllFiles YES
	killall Finder
}
function hiddenHide () {
	defaults write com.apple.finder AppleShowAllFiles NO
	killall Finder
}
function serve () {
	open http://localhost:$1
	php -S localhost:$1
}
