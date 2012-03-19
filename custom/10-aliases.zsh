# my aliases

alias unicorn-start='unicorn_rails -c /var/lib/nginx/www/app/config/unicorn.rb -D'
alias unicorn-stop='kill -9 `cat /var/lib/nginx/www/app/tmp/unicorn.pid`'
alias dbmigseed='rake db:migrate && rake db:seed'
alias utm_admin='~/Programs/UTMAdmin/run_utm_admin'

if [ $HOST = 'YODA' ]; then
    alias eve-online='env WINEARCH=win32 env WINEPREFIX="/home/hunter/.wine" env LIBGL_DRIVERS_PATH=/usr/lib32/dri  LD_PRELOAD=/usr/lib32/fglrx/libGL.so.1 wine  explorer /desktop=EVE1,1600x900  C:\\Games\\EVE\\bin\\ExeFile.exe /END /LUA:OFF &>~/eve-messages'
fi
