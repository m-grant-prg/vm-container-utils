# $1 is distro $2 is release $3 is arch $4 is source directory $5 is project

set -e

# Clone the container

lxc-copy -n $1-$2-$3-builder -N $5

echo "lxc.mount.entry = $4 /home/mgrantprg/.local/share/lxc/$5/rootfs/$5 none bind,create=dir 0 0" | tee -a /home/mgrantprg/.local/share/lxc/$5/config

lxc-start -n $5
sleep 10
lxc-attach -n $5 sudo apt-get update
lxc-attach -n $5 sudo apt-get -- -y install autoconf automake autotools-dev
lxc-attach -n $5 sudo apt-get -- -y install txt2man txt2manwrap
lxc-attach -n $5 cp -- -vr $5 build
lxc-attach -n $5 -vHOME=/build/atbuild
lxc-stop -n $5

lxc-destroy -n $5

exit 0

