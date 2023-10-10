#! /usr/bin/env bash


declare -i seq=0


check_pre-existing_snapshots()
{
	local found
	local snapname
	local snapname_determined=false
	local snapshot

	while ( ! $snapname_determined ); do
		found=false

		for snapshot in $snapshots; do
			snapname=$(echo "$snapshot" | awk '
				BEGIN { FS="=" }
				$0 ~ /^SnapshotName/ { gsub(/"/, "", $2);
				print $2 }')
			if [[ $snapname == $newsnapname ]]; then
				found=true
				break
			fi
		done
		if $found; then
			(( seq++ ))
			newsnapname="Snapshot-$(date +%y%m%d)-$seq"
			continue
		fi
		snapname_determined=true
	done
}


# Main

# Must supply the VM name.
if (( $# != 1 )); then
	echo "Please supply 1 VM name as 1 argument."
	exit 1
fi

# Validate VM name.
if (( ! $(VBoxManage list vms | grep "\<$1\>" | wc -l))); then
	echo "No such VM $1"
	exit 1
fi

# VM must not be running.
if (( $(VBoxManage list runningvms | grep "\<$1\>" | wc -l))); then
	echo "VM $1 is running, please shutdown first."
	exit 1
fi

echo "Creating snapshot for VM $1"
newsnapname="Snapshot-$(date +%y%m%d)-$seq"
snapshots=$(VBoxManage snapshot "$1" list --machinereadable)
if (( $? == 0 )); then
	check_pre-existing_snapshots
fi

VBoxManage snapshot "$1" take "$newsnapname"


