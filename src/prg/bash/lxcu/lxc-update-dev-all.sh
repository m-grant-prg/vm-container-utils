#

set -e

./lxc-update-dev.sh debian debian-buster-amd64-builder

./lxc-update-dev.sh debian debian-stretch-amd64-builder

./lxc-update-dev.sh ubuntu ubuntu-bionic-amd64-builder

