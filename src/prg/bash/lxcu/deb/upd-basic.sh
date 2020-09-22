# $1 is distribution $2 is container name

set -e

# Update the installed packages.
lxc-start -n $2
sleep 10
lxc-attach -n $2 sudo apt-get update
lxc-attach -n $2 sudo agmaint.sh -- -- -y
lxc-stop -n $2

# Now run distro-specific setup.
deb/$1/$(basename $0) $2

