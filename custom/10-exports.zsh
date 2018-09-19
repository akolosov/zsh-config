# Misc config
export REALLY_GEM_UPDATE_SYSTEM='yes'

export JAVA_HOME="/usr/lib/jvm/jre1.7.0_21"

export PATH="/usr/local/bin:/opt/local/bin:$PATH:$JAVA_HOME/bin"

export EDITOR="/usr/local/bin/vim"

#GVM Config
[ -f /usr/local/gvm/scripts/gvm ] && . /usr/local/gvm/scripts/gvm

[ -f ~/.gvm/scripts/gvm ] && . ~/.gvm/scripts/gvm

[ -f ~/.gvm_local ] && . ~/.gvm_local

#RVM Config
[ -f /usr/share/ruby-rvm/environments/default ] && . /usr/share/ruby-rvm/environments/default

[ -f /usr/local/rvm/environments/default ] && . /usr/local/rvm/environments/default

[ -f /usr/local/rvm/scripts/rvm ] && . /usr/local/rvm/scripts/rvm

[ -f ~/.rvm/scripts/rvm ] && . ~/.rvm/scripts/rvm


# NVM Config
export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ASDF Config
# Global
[ -f /usr/local/opt/asdf/asdf.sh ] && . /usr/local/opt/asdf/asdf.sh
[ -f /usr/local/etc/bash_completion.d/asdf.bash ] && . /usr/local/etc/bash_completion.d/asdf.bash
# Local
[ -f ~/.asdf/asdf.sh ] && . ~/.asdf/asdf.sh
[ -f ~/.asdf/completions/asdf.bash ] && . ~/.asdf/completions/asdf.bash

export PATH=~/.local/bin:$PATH
