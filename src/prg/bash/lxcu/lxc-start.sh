#! /usr/bin/env bash

# This script assumes that the hard-wired ethernet connection is enp* and that
# bridge br0 is attached to it.

set -e

# Must supply the container name.
if (( $# != 1 )); then
	echo "Please supply 1 VM name as 1 argument."
	exit 1
fi

# Enable / disable bridge VNI depending on hard-wired ethernet port status.
if (($(ip link show | grep 'enp.*br0.*state UP' | wc -l))); then
	lxc-start -n $1 -f ~/.local/share/lxc/$1/config-br0
else
	lxc-start -n $1
fi

