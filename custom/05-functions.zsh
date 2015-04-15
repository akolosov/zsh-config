function rvm-global () {
    [ -z $1 ] || sudo /usr/bin/rvm use $1@global --default
}

function rvm-noglobal () {
    [ -z $1 ] || sudo /usr/bin/rvm use $1 --default
}

function createproject () {
    [ -z $1 ] && exit 0
    cd ~/Projects
    mkdir $1
    cd $1
    vim
}

function editproject () {
    [ -z $1 ] && exit 0
    cd ~/Projects/$1
    vim
}

vman() {
  vim -c "SuperMan $*"

  if [ "$?" != "0" ]; then
    echo "No manual entry for $*"
  fi
}

function codelinecount() {
  [ -z $1 ] && exit 0
  find . -name $1|xargs cat|grep -x -v '^\s*//.*$'| wc -l
}


function commentlinecount() {
  [ -z $1 ] && exit 0
  find . -name $1|xargs cat|grep -x '^\s*//.*$'| wc -l
}
