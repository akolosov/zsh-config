# Misc config
export REALLY_GEM_UPDATE_SYSTEM='yes'

export JAVA_HOME="/usr/lib/jvm/jre1.7.0_21"

export PATH="/usr/local/bin:/opt/local/bin:$PATH:$JAVA_HOME/bin"

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd_hbgr -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

export EDITOR="vim"

#RVM Config
[ -f /var/cache/ruby-rvm/environments/default ] && . /var/cache/ruby-rvm/environments/default

[ -f /usr/share/ruby-rvm/environments/default ] && . /usr/share/ruby-rvm/environments/default

[ -f /usr/local/rvm/environments/default ] && . /usr/local/rvm/environments/default

[ -f /usr/local/rvm/scripts/rvm ] && . /usr/local/rvm/scripts/rvm

[ -f ~/.rvm/scripts/rvm ] && . ~/.rvm/scripts/rvm

#GVM Config
[ -f /usr/local/gvm/scripts/gvm ] && . /usr/local/gvm/scripts/gvm

[ -f ~/.gvm/scripts/gvm ] && . ~/.gvm/scripts/gvm

[ -f ~/.gvm_local ] && . ~/.gvm_local

