# my aliases

alias unicorn-start='unicorn_rails -c /var/lib/nginx/www/app/config/unicorn.rb -D'
alias unicorn-stop='kill -9 `cat /var/lib/nginx/www/app/tmp/unicorn.pid`'

if [ $HOST = 'ASU1' ]; then
    alias apt-key='sudo apt-key --keyserver-options http-proxy="http://admin:4379@192.168.0.224:3128/" '
    alias chrome-noproxy='/usr/bin/proxychains /usr/lib/chromium-browser/chromium-browser --no-proxy-server %U'
    alias curl='curl --proxy 192.168.0.224:3128 --proxy-user admin:4379 '
    alias pch='proxychains '
fi


if [ $HOST = 'YODA' ]; then
    alias eve-online='env WINEARCH=win32 env WINEPREFIX="/home/hunter/.wine" env LIBGL_DRIVERS_PATH=/usr/lib32/dri  LD_PRELOAD=/usr/lib32/fglrx/libGL.so.1 wine  explorer /desktop=EVE1,1600x900  C:\\Games\\EVE\\bin\\ExeFile.exe /END /LUA:OFF &>~/eve-messages'
fi
