#! /usr/bin/env bash

set -e

if (( $# != 1 )); then
	echo "Please supply 1 VM name as 1 argument."
	exit 1
fi

if (( ! $(VBoxManage list vms | grep "\<$1\>" | wc -l))); then
	echo "No such VM $1"
	exit 1
fi

vm-snapshot-cre.sh "$1"

VBoxManage startvm "$1"

