# my aliases

alias dbmigseed='rake db:migrate && rake db:seed'

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
alias gmp="git checkout master; git merge --no-ff develop; git push --all; git push --tags; git checkout develop"

# diffdirs a/ b/
alias diffdirs='diff -burN'

alias go='[ -f $PWD/.gvm_local ] && . $PWD/.gvm_local; go '

alias man='vman'
