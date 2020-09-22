# $1 is container name $2 is distro $3 is release $4 is arch

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

# Clone the container

lxc-copy -n $DIST-$REL-$ARCH-builder -N $1

lxc-start -n $1
sleep 10

lxc-attach -n $1
lxc-stop -n $1

lxc-destroy -n $1

exit 0

