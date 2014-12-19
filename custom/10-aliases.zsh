# my aliases

alias dbmigseed='rake db:migrate && rake db:seed'

alias touchpad-off='xinput disable "ETPS/2 Elantech Touchpad"'
alias touchpad-on='xinput enable "ETPS/2 Elantech Touchpad"'

alias keyboard-off='xinput disable "AT Translated Set 2 keyboard"'
alias keyboard-on='xinput enable "AT Translated Set 2 keyboard"'

alias laptop-display-off='xrandr --output eDP1 --off; xrandr --output HDMI1 --auto'
alias laptop-display-on='; xrandr --output HDMI1 --off; xrandr --output eDP1 --auto'

alias gcd='git checkout'
alias gmkcd='git checkout -b'
alias gmk='git branch'
alias gls='git branch'
alias gsrm='git branch -d'
alias grm='git branch -D'
alias gcp='git merge --no-ff'
alias gmv='git merge'
alias grmr='git push origin --delete'
alias gta='git tag -a '
alias grmt='git tag --delete '
alias grmtr='git push origin :refs/tags/'
alias gclr='git clone --recursive'
alias gcl='git clone'
alias gcad="git commit -a -m '`date +%d.%m.%Y`'"
alias gmp="git checkout master; git merge --no-ff develop; git push --all; git push --tags; git checkout develop"

alias p='ping'
alias t='traceroute'
alias tp='tracepath'

# diffdirs a/ b/
alias diffdirs='diff -burN'

alias go='[ -f .gvm_local ] && . .gvm_local; go '
