
# Aliases
# ----------------------------
alias porky='ssh -i /home/mobaxterm/.ssh/nopass -X porky.space.swri.edu' # porky

alias df='df -h'
alias diff='diff --color=auto'

# Easier navigation: .., ..., ~ and -
alias back="cd ~-" # Go back to the last directory
alias ..="cd .." # Go up one level
alias cd..="cd .." # Go up one level
alias ...="cd ../.." # Go up two levels
alias ....="cd ../../.." # Go up three levels
alias .....="cd ../../../.." # Go up four levels


alias mv='mv -v'
alias rm='rm -i' # confirm delete
alias cp='cp -v'
alias exi='exit' 
alias diff='colordiff' 



alias unlock='sudo chmod -R g+w ' # unlock a file
alias fixSitePerms='sudo chmod -R a+w tmp; sudo chmod -R a+w logs' # fix permissions for a site


alias svnDiff='svn diff -x -w -x --ignore-eol-style | vim -R -' # svn diff with vim
alias svnDiffNoWS='svn diff -x --ignore-eol-style' # svn diff with no whitespace
alias findInDir='grep -rnw . -e' # find in directory




alias restartmysql='sudo systemctl restart mariadb.service' 
alias restartphp='sudo systemctl restart php-fpm.service' 
alias restartweb='sudo systemctl restart httpd.service'

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
alias galley='vendor/bin/galley' 
alias cake='vendor/bin/galley cake' 
alias phpunit='vendor/bin/galley test --testdox' 
alias treed='tree -L 2 -d -I vendor' 


[ -f ~/.fzf.bash ] && source ~/.fzf.bash 

eval "$(~/.local/bin/zoxide init bash)" 



alias setbrightness='xrandr --output LVDS1 --brightness' # setbrightness 0.5
alias setbacklight='xbacklight -set' # setbacklight 50
alias night='redshift &' 
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


alias UTGDrive='google-drive-ocamlfuse -label UTGDrive ~/UTGDrive/'
alias PersonalGDrive='google-drive-ocamlfuse -label PersonalGDrive ~/PersonalGDrive/'
alias box='mount ~/box'
alias lt='exa -T' # needs to be installed on ubuntu
alias ln='ln -v' 
alias path='echo $PATH | tr -s ":" "\n"' 


alias git-edit-new='$EDITOR $(git ls-files --others --exclude-standard)' # git-edit-new

alias o="xdg-open" # open file with default program (i.e. open a pdf)

alias afk="gnome-screensaver-command --lock" # lock screen

alias apti="sudo apt-get install"
alias aptr="sudo apt-get remove"
alias apts="sudo apt-cache search"

alias pipUpgrade="pip freeze --user | cut -d'=' -f1 | xargs -n1 pip install -U"

alias startbluetooth="systemctl start bluetooth.service"

alias v='f -e vim' # quick opening files with vim
alias e='f -e subl' # quick opening files with subl
alias vid='f -e vlc' # quick opening files with vlc
alias o='a -e xdg-open' # quick opening files with xdg-open

alias windscribe_transmission='windscribe_start && sudo -g vpnroute transmission-gtk'

# some more ls aliases
alias lr='ls -halFR'
alias ll='ls -halF'
alias la='ls -A'
alias l='ls -CF'
alias lsd='ls -l | grep "^d"' # only directories


# Exports
# ----------------------------
export PATH="${PATH}:/home/usalman/.cargo/bin:/home/usalman/.local/bin" # rust and local bin

export PATH=$PATH:/home/usalman/bash-ai # bash-ai
# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export EDITOR='vim' # set default editor to vim


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
