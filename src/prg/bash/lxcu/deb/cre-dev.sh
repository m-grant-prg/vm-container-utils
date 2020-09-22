# $1 is distro $2 is release $3 is type $4 is container name

set -e

# Install the basic dev environment.
lxc-start -n $4
# Without a sleep always get Temporary failure resolving ....
# lxc-wait -n $4 -s RUNNING does not work.
sleep 10
lxc-attach -n $4 sudo apt-get update
lxc-attach -n $4 sudo agmaint.sh -- -- -y

# Install Debian's build-essentials as documented in
# /usr/share/doc/build-essential/list
lxc-attach -n $4 sudo apt-get -- -y install build-essential

# Now setup packages to fulfill this container's purpose.
lxc-attach -n $4 sudo apt-get -- -y install git
lxc-stop -n $4


# Now download the list of packages used in development. This is for caching
# purposes only.
lxc-start -n $4
sleep 10
cat deb/apt-cache-add.txt | xargs lxc-attach -n $4 sudo apt-get -- -y -d install
lxc-stop -n $4


# Now run distro-specific setup.
deb/$1/$(basename $0) $1 $2 $3 $4

