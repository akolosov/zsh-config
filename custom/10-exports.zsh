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

export REALLY_GEM_UPDATE_SYSTEM='yes'

export JAVA_HOME="/usr/lib/jvm/jre1.7.0_21"

export GOROOT="/usr/lib/Go"

export PATH; PATH="/opt/local/bin:$PATH:$JAVA_HOME/bin:$GOROOT/bin"

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd_hbgr -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
