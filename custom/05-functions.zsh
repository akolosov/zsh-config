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

function build-module() {
	[ -f "./VERSION" ] && VERSION=`cat ./VERSION` || VERSION="0.1"
	BUILD=`date +%d%m%Y%H%M`
	HOST=`whoami`@`hostname`

	go build -ldflags "-X bitbucket.org/crutches-n-bikes/common/module.version=$VERSION -X bitbucket.org/crutches-n-bikes/common/module.build=$BUILD -X bitbucket.org/crutches-n-bikes/common/module.builder=$HOST" -v -a
}
