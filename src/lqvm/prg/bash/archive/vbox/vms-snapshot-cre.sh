#! /usr/bin/env bash

set -e

# Script takes no arguments.
if (( $# != 0 )); then
	echo "Script does not take any arguments."
	exit 1
fi

# Ensure no running VMs.
if (( $(VBoxManage list runningvms | wc -l) > 0 )); then
	echo "Please shutdown all running VMs."
	exit 1
fi

# IFS just a LF.
IFS='
'

# Create snapshots for each machine individually.
machines=$(VBoxManage list vms)
for machine in $machines; do
	name=$(echo "$machine" | awk '
		{ gsub(/"/, "", $1); print $1 }')
	vm-snapshot-cre.sh "$name"
done

