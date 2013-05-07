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

export PATH; PATH="/opt/local/bin:$PATH"

export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=lcd_hbgr -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"
