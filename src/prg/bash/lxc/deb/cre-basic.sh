# $1 is distro $2 is release $3 is type $4 is container name

set -e

# Set up the apt files.
sudo cp -rv deb/$1/etc/apt/* ~/.local/share/lxc/$4/rootfs/etc/apt
sudo chown -Rv 100000:100000  ~/.local/share/lxc/$4/rootfs/etc/apt
sudo sed -i -e "s|@dist@|$2|g" $(find ~/.local/share/lxc/$4/rootfs/etc/apt -maxdepth 1 -type f)
sudo sed -i -e "s|@dist@|$2|g" $(find ~/.local/share/lxc/$4/rootfs/etc/apt/sources.list.d -maxdepth 1 -type f)

# Initially install sudo.
lxc-start -n $4
# Without a sleep always get Temporary failure resolving ....
# lxc-wait -n $4 -s RUNNING does not work.
sleep 10
lxc-attach -n $4 apt-get update
lxc-attach -n $4 -vPATH=$PATH:/sbin:/usr/sbin apt-get -- -y install sudo
# Set up the dosab files.
lxc-attach -n $4 sudo apt-get -- -y install server-dependency
lxc-stop -n $4
sudo cp -v deb/$1/etc/dosab/* ~/.local/share/lxc/$4/rootfs/etc/dosab
sudo chown -Rv 100000:100000  ~/.local/share/lxc/$4/rootfs/etc/dosab
sudo sed -i -e "s|@dist@|$2|g" $(find ~/.local/share/lxc/$4/rootfs/etc/dosab -maxdepth 1 -type f)

lxc-start -n $4
sleep 5
lxc-attach -n $4 sudo apt-get update
lxc-attach -n $4 sudo apt-get -- -y install apt apt-utils agmaint vim
lxc-attach -n $4 sudo apt-key update
lxc-attach -n $4 sudo agmaint.sh -- -- -y
lxc-stop -n $4

# Now run distro-specific setup.
deb/$1/$(basename $0) $1 $2 $3 $4

