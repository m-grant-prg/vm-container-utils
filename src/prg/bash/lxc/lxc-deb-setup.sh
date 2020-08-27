# $1 is distro $2 is release $3 is type $4 is container name

set -e

deb/cre-$3.sh $1 $2 $3 $4

