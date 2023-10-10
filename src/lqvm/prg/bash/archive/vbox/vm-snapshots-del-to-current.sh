#! /usr/bin/env bash


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

echo "Deleting snapshots excluding current for VM $1"

# Get snapshot records, select uuid records ignoring Current then delete
# snaphots individually.
snapshots=$(VBoxManage snapshot "$1" list --machinereadable)
if (( $? )); then
	echo "$snapshots"
	exit 0
fi

for snapshot in $snapshots; do
	currentsnapuuid=$(echo "$snapshot" | awk '
		BEGIN { FS="=" }
		$0 ~ /^CurrentSnapshotUUID/ { gsub(/"/, "", $2); print $2 }')
	if [[ $currentsnapuuid ]]; then
		break
	fi
done

for snapshot in $snapshots; do
	snapuuid=$(echo "$snapshot" | awk '
		BEGIN { FS="=" }
		$0 ~ /^SnapshotUUID/ { gsub(/"/, "", $2); print $2 }')
	if [[ $snapuuid && ($snapuuid != $currentsnapuuid) ]]; then
		VBoxManage snapshot "$1" delete $snapuuid
	fi
done

