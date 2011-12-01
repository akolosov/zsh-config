function rvm-global () {
    [ -z $1 ] || sudo /usr/bin/rvm use $1@global --default
}

function rvm-noglobal () {
    [ -z $1 ] || sudo /usr/bin/rvm use $1 --default
}