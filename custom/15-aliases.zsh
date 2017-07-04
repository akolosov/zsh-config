# my aliases

alias gcd='git checkout'
alias gmkcd='git checkout -b'
alias gmk='git branch'
alias gls='git branch'
alias gsrm='git branch -d'
alias grm='git branch -D'
alias gcp='git merge --no-ff'
alias gmv='git merge'
alias grmr='git push origin --delete'
alias gpa='git push -a '
alias gta='git tag -a '
alias grmt='git tag --delete '
alias grmrt='git push origin :refs/tags/'
alias gclr='git clone --recursive'
alias gcl='git clone'
alias gcad="git commit -a -m '`date +%d.%m.%Y`'"
alias gmp="git checkout master && git merge --no-ff develop && git push --all && git push --tags && git checkout develop"
alias gfor="git fetch origin && git rebase origin/master"
alias gfo="git fetch origin"
alias gfol="git fetch origin && git pull"
alias gcln="git remote prune origin && git gc --auto"

# diffdirs a/ b/
alias diffdirs='diff -burN'

alias go='[ -f $PWD/.gvm_local ] && . $PWD/.gvm_local; go '

alias gb="$GOPATH/bin/gb"

alias vim='/usr/local/bin/vim'

alias man='vman'

alias bm='build-module'
alias bmd='build-module-debug'
alias tm='test-module'

