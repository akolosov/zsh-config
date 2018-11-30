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

function build-module() {
	[ -f "./VERSION" ] && VERSION=`cat ./VERSION` || VERSION="0.1"
	BUILD=`date +%d.%m.%Y@%H:%M`
	HOST=`whoami`@`hostname`
	CURDIR=`pwd`
	TARGET=`basename "$CURDIR"`

  go build -ldflags "-X bitbucket.org/crutches-n-bikes/common/module.version=$VERSION -X bitbucket.org/crutches-n-bikes/common/module.build=$BUILD -X bitbucket.org/crutches-n-bikes/common/module.builder=$HOST" -v -a

  if [ $? -eq 0 ]; then
    goupx --strip-binary $TARGET
	fi
}

function build-module-debug() {
	[ -f "./VERSION" ] && VERSION=`cat ./VERSION` || VERSION="0.1"
  BUILD=`date +%d.%m.%Y@%H:%M`
  HOST=`whoami`@`hostname`

  go build -ldflags "-X bitbucket.org/crutches-n-bikes/common/module.release=debug -X bitbucket.org/crutches-n-bikes/common/module.version=$VERSION -X bitbucket.org/crutches-n-bikes/common/module.build=$BUILD -X bitbucket.org/crutches-n-bikes/common/module.builder=$HOST" -v -a
}

