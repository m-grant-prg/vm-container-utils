# $1 is distro $2 is container name

set -e

# Now update the downloaded packages used in development. This is for caching
# purposes only.
lxc-start -n $2
sleep 10
cat deb/apt-cache-add.txt | xargs lxc-attach -n $2 sudo apt-get -- -y -d install
lxc-stop -n $2


# Now run distro-specific setup.
deb/$1/$(basename $0) $2

