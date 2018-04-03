alias setbrightness='xrandr --output LVDS1 --brightness'
alias setbacklight='xbacklight -set'
alias night='redshift &'
alias battery='acpi -ib && upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias gitpullall='for i in */.git; do ( echo $i; cd $i/..; git pull; ); done'
alias update='sudo apt update && sudo apt dist-upgrade && rustup update stable && cargo install-update -ag'
alias pyclean='find . -name \*.pyc -o -name \*.pyo -o -name __pycache__ -exec rm -rv {} +'
alias windscribe_start='sudo /etc/init.d/windscribe-cli start && sleep 20 && windscribe connect'
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

#alias quick_maths='mdlt simplify'
alias quick_maths='tcalc'

# Get External IP / local IPs
alias ip_public='curl ipinfo.io/ip'
#alias ip_locals='ifconfig -a | perl -nle"/(\d+\.\d+\.\d+\.\d+)/ && print $1"'
#alias ip_local='ip -c a | rg inet | cut -c10-'
alias ip_local='ip -o -c a | awk "{print \$2, "\t", \$4}" | column -t'
alias speedtest='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'

alias UTGDrive='google-drive-ocamlfuse -label UTGDrive ~/UTGDrive/'
alias PersonalGDrive='google-drive-ocamlfuse -label PersonalGDrive ~/PersonalGDrive/'
alias box='mount ~/box'
alias lt='exa -T'
alias ln='ln -v'
alias path='echo $PATH | tr -s ":" "\n"'
