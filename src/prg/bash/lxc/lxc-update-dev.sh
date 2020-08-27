# $1 is distribution $2 is container name

set -e

./lxc-deb-update.sh $1 $2 basic

./lxc-deb-update.sh $1 $2 dev

