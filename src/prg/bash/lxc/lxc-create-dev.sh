# $1 is distro $2 is release $3 is arch $4 is container name

set -e

./lxc-create-basic.sh $1 $2 $3 $4

./lxc-deb-setup.sh $1 $2 dev $4

