alias setbrightness='xrandr --output LVDS1 --brightness'
alias setbacklight='xbacklight -set'
alias night='redshift &'
alias battery='acpi -ib && upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias gitpullall='for i in */.git; do ( echo $i; cd $i/..; git pull; ); done'
alias update='sudo apt update && sudo apt dist-upgrade && rustup update stable && cargo install-update -ag'
alias pyclean='find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -exec rm -rv {} +'
alias windscribe_start='sudo /etc/init.d/windscribe-cli start && sleep 50 && windscribe connect'
alias windscribe_end='windscribe disconnect && sleep 20 && sudo /etc/init.d/windscribe-cli stop'

alias df='df -h'
alias diff='diff --color=auto'

# Easier navigation: .., ..., ~ and -
alias back="cd ~-"
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias mv='mv -v'
alias rm='rm -i'
alias cp='cp -v'
alias exi='exit'

alias quick_maths='tcalc'

# Get External IP / local IPs
alias ip_public='curl ipinfo.io/ip'
alias ip_local='ip -o -c a | awk "{print \$2, "\t", \$4}" | column -t'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

alias UTGDrive='google-drive-ocamlfuse -label UTGDrive ~/UTGDrive/'
alias UTkamek='ssh -X usalman@kamek.ece.utexas.edu'
alias PersonalGDrive='google-drive-ocamlfuse -label PersonalGDrive ~/PersonalGDrive/'
alias box='mount ~/box'
alias lt='exa -T'
alias ln='ln -v'
alias path='echo $PATH | tr -s ":" "\n"'

alias git-edit-new='$EDITOR $(git ls-files --others --exclude-standard)'

alias o="xdg-open"

alias afk="gnome-screensaver-command --lock"

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
