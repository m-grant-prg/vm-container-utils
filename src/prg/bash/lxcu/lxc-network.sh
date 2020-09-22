# $1 is the network connection, $2 is the container name.

set -e

case "$1" in
br0)
	cat br0 | tee -a /home/mgrantprg/.local/share/lxc/$2/config
	exit 0
	;;
br0virbr0)
	cp -v /home/mgrantprg/.local/share/lxc/$2/config /home/mgrantprg/.local/share/lxc/$2/config-br0
	cat virbr0 | tee -a /home/mgrantprg/.local/share/lxc/$2/config
	cat br0 | tee -a /home/mgrantprg/.local/share/lxc/$2/config-br0
	exit 0
	;;
lxcbr0)
	cat lxcbr0 | tee -a /home/mgrantprg/.local/share/lxc/$2/config
	exit 0
	;;
virbr0)
	cat virbr0 | tee -a /home/mgrantprg/.local/share/lxc/$2/config
	exit 0
	;;
*)	echo "Invalid network connection."
	exit 64
	;;
esac

