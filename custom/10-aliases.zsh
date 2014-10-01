# my aliases

alias dbmigseed='rake db:migrate && rake db:seed'

alias touchpad-off='xinput --set-prop "ETPS/2 Elantech Touchpad" "Device Enabled" 0'
alias touchpad-on='xinput --set-prop "ETPS/2 Elantech Touchpad" "Device Enabled" 1'

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
