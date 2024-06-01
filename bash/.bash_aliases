# Source global definitions
if [ -f /etc/bashrc ]; then
    	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
gkd() {
	if [ -n "$*" ]; then
    	mkdir -p "$@"
    	cd "$@" \
            	|| exit 1
    	fi
}

foldfind() {
	grep -ir --color=always "$*" --exclude-dir=".git" --exclude-dir="node_modules" . | less -RX
}

w() {
	cd /web/"$1"
}





# Aliases
alias porky='ssh -i /home/mobaxterm/.ssh/nopass -X porky.space.swri.edu' # porky


# some more ls aliases
alias lr='ls -halFR' # recursive
alias ll='ls -halF' # long list
alias la='ls -A' # all but . and ..
alias l='ls -CF' # column view
alias ltime='ls -ltr' # sort by time
alias lsd='ls -l | grep "^d"' # only directories

# Easier navigation: .., ..., ~ and -
alias back="cd ~-" # Go back to the last directory
alias ..="cd .." # Go up one level
alias cd..="cd .." # Go up one level
alias ...="cd ../.." # Go up two levels
alias ....="cd ../../.." # Go up three levels
alias .....="cd ../../../.." # Go up four levels


alias mv='mv -v' # verbose
alias rm='rm -i' # confirm delete
alias cp='cp -v' # verbose 
alias exi='exit' # exit
alias diff='colordiff' # color diff


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias unlock='sudo chmod -R g+w ' # unlock a file
alias fixSitePerms='sudo chmod -R a+w tmp; sudo chmod -R a+w logs' # fix permissions for a site

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

alias svnDiff='svn diff -x -w -x --ignore-eol-style | vim -R -' # svn diff with vim
alias svnDiffNoWS='svn diff -x --ignore-eol-style' # svn diff with no whitespace
alias findInDir='grep -rnw . -e' # find in directory

export EDITOR='vim' # set default editor to vim


alias restartmysql='sudo systemctl restart mariadb.service' # restart mysql
alias restartphp='sudo systemctl restart php-fpm.service' # restart php
alias restartweb='sudo systemctl restart httpd.service' # restart apache

alias o='xdg-open' # open file with default program

alias gitlog='git log --graph --oneline --date-order --decorate --color --all' # git log with graph



p() {
	cd /web/"$1"/plugins/"${1^}"
}

alias assetcompress='bin/cake asset_compress build --force'

# Git Aliases
alias git-root='cd $(git rev-parse --show-cdup)' # go to git root
alias gitroot='cd $(git rev-parse --show-toplevel)' # go to git root


## @amayer5125
alias galley='vendor/bin/galley' # galley
alias cake='vendor/bin/galley cake' # cake
alias phpunit='vendor/bin/galley test --testdox' # phpunit
alias treed='tree -L 2 -d -I vendor' # tree directories


[ -f ~/.fzf.bash ] && source ~/.fzf.bash # fzf

eval "$(~/.local/bin/zoxide init bash)" # zoxide



export PATH="${PATH}:/home/usalman/.cargo/bin:/home/usalman/.local/bin" # rust and local bin

export PATH=$PATH:/home/usalman/bash-ai # bash-ai


alias setbrightness='xrandr --output LVDS1 --brightness' # setbrightness 0.5
alias setbacklight='xbacklight -set' # setbacklight 50
alias night='redshift &' # night
alias battery='acpi -ib && upower -i /org/freedesktop/UPower/devices/battery_BAT0' # battery
alias gitpullall='for i in */.git; do ( echo $i; cd $i/..; git pull; ); done' # gitpullall
alias update='sudo apt update && sudo apt dist-upgrade && rustup update stable && cargo install-update -ag' # update
alias pyclean='find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -exec rm -rv {} +' # pyclean
alias windscribe_start='sudo /etc/init.d/windscribe-cli start && sleep 20 && windscribe connect' # windscribe_start
alias windscribe_end='windscribe disconnect && sleep 20 && sudo /etc/init.d/windscribe-cli stop' # windscribe_end

alias df='df -h' # human-readable sizes
alias diff='diff --color=auto' # colorize diff output



alias quick_maths='tcalc'

# Get External IP / local IPs
alias ip_public='curl ipinfo.io/ip' # Get Public IP
alias ip_local='ip -o -c a | awk "{print \$2, "\t", \$4}" | column -t' # Get Local IP
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip' # Speedtest

alias UTGDrive='google-drive-ocamlfuse -label UTGDrive ~/UTGDrive/' # UTGDrive
alias PersonalGDrive='google-drive-ocamlfuse -label PersonalGDrive ~/PersonalGDrive/' # PersonalGDrive
alias box='mount ~/box' # box
alias lt='exa -T' # list tree
alias ln='ln -v' # verbose
alias path='echo $PATH | tr -s ":" "\n"' # path

alias git-edit-new='$EDITOR $(git ls-files --others --exclude-standard)' # git-edit-new

alias o="xdg-open" # open file with default program

alias afk="gnome-screensaver-command --lock" # lock screen

alias apti="sudo apt-get install" # apt install
alias aptr="sudo apt-get remove" # apt remove
alias apts="sudo apt-cache search" # apt search
