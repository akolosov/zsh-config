function rvm-global () {
    [ -z $1 ] || sudo /usr/bin/rvm use $1@global --default
}

function rvm-noglobal () {
    [ -z $1 ] || sudo /usr/bin/rvm use $1 --default
}

function newproject () {
    [ -z $1 ] && exit 0
    cd ~/Projects
    mkdir $1
    cd $1
    kate &>/dev/null &
    exit 0
}

function goproject () {
    [ -z $1 ] && exit 0
    cd ~/Projects/$1
    kate &>/dev/null &
    exit 0
}

