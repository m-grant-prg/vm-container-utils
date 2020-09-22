# $1 is distribution $2 is container name $3 is type

set -e

deb/upd-$3.sh $1 $2

