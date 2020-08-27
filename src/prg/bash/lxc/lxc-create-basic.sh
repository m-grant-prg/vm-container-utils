# $1 is distro $2 is release $3 is arch $4 is container name

set -e

lxc-create -t download -n $4

./lxc-network.sh lxcbr0 $4

./lxc-deb-setup.sh $1 $2 basic $4

