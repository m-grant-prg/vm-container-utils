# $1 is basedir $2 is distro $3 is release $4 is arch

set -e


DIST=debian
REL=buster
ARCH=amd64

if [[ -n $4 ]]; then
	ARCH=$4
fi

if [[ -n $3 ]]; then
	REL=$3
fi

if [[ -n $2 ]]; then
	DIST=$2
fi

cd $1
DIR=$(pwd)
cd -

PROJECT=${DIR##*/}

/home/mgrantprg/SWDev/BashProjects/vm-container-utils/deb/builds/build-$PROJECT.sh $DIST $REL $ARCH $DIR $PROJECT

