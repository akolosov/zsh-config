export GOROOT="/usr/local/go"

export GOPATH="$HOME/.go"

#RVM Config
if [ -f /var/cache/ruby-rvm/environments/default ]; then
    . /var/cache/ruby-rvm/environments/default
fi

if [ -f /usr/share/ruby-rvm/environments/default ]; then
    . /usr/share/ruby-rvm/environments/default
fi

if [ -f /usr/local/rvm/environments/default ]; then
    . /usr/local/rvm/environments/default
fi

if [ -f /usr/local/rvm/scripts/rvm ]; then
    . /usr/local/rvm/scripts/rvm
fi

if [ -f ~/.rvm/scripts/rvm ]; then
    . ~/.rvm/scripts/rvm
fi

if [ -f /usr/local/gvm/scripts/gvm ]; then
    . /usr/local/gvm/scripts/gvm
fi

if [ -f ~/.gvm/scripts/gvm ]; then
    . ~/.gvm/scripts/gvm
fi

export REALLY_GEM_UPDATE_SYSTEM='yes'

export JAVA_HOME="/usr/lib/jvm/jre1.7.0_21"

export PATH; PATH="/usr/local/bin:/opt/local/bin:$PATH:$JAVA_HOME/bin:$GOROOT/bin:$GOPATH/bin"

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd_hbgr -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

export EDITOR="vim"
