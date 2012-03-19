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

if [ $HOST = "ASU1" ]; then
    export no_proxy=$(echo $no_proxy | sed 's/,$//')
elif [ $HOST = "YODA" ]; then
    export no_proxy=$(echo $no_proxy | sed 's/,$//')
fi

export REALLY_GEM_UPDATE_SYSTEM='yes'

export PATH; PATH="/opt/local/bin:$PATH"