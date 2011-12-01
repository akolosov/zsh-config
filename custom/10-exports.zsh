#RVM Config
if [ -f /var/cache/ruby-rvm/environments/default ]; then
    . /var/cache/ruby-rvm/environments/default
fi

if [ $HOST = "ASU1" ]; then
    export http_proxy=http://hunter:bumpy@192.168.0.224:3128/
    export https_proxy=http://hunter:bumpy@192.168.0.224:3128/
    export ftp_proxy=http://hunter:bumpy@192.168.0.224:3128/
    export no_proxy=$(echo $no_proxy | sed 's/,$//')
elif [ $HOST = "YODA" ]; then
    export no_proxy=$(echo $no_proxy | sed 's/,$//')
fi

export MOZILLA_FIVE_HOME=/usr/lib/firefox-7.0.1

export REALLY_GEM_UPDATE_SYSTEM='yes'
