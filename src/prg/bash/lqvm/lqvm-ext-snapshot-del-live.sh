#! /usr/bin/env bash

# $1 is domain name
# $2 is snapshot name

# Read through virsh snaphot list until snapshot match
#	Data fetch
#		In the snapshot to delete
#			check it is an external snapshot
#			get the snapshots source filename (A)
#			get the parents driver type;  qcow2, raw etc (B)
#			get the parents backing store (source filename) (C)
#	Processing
#		virsh blockcommit domain vda --shallow --top A \
#			--wait --verbose
#		If no child exists
#			add -pivot to above command
#		rm A
#		If child exists then in child
#			replace parents driver type; qcow2, raw etc with B
#			replace parents backing store with C
#		else no child so in domain xml
#			replace driver type; qcow2, raw etc with B
#			replace backing store with C
#		virsh snapshot-delete $2 --metadata


# Processing for 2 snapshot availabilty scenarios
#	Scenario 1			Scenario 2
#	==========			==========
#	Snapshots			Snapshots
#	---------			---------
#	parent / image			parent / image
#	snap2del			snap2del
#	child
#
#	Processing			Processing
#	----------			----------
#	commit snap2del			commit snap2del
#	rm snap2del			rm snap2del
#	virsh child point 2 parent
#					virsh domainxml update backing store
#	virsh snapshot-delete		virsh snapshot-delete


set -e

# Must supply the VM and snapshot names.
if (( $# != 2 )); then
	echo "Please supply the VM name and the snapshot name."
	exit 1
fi

# Validate VM name.
if ((!$(virsh --connect qemu:///system list --all | grep "\<$1\>" | wc -l)));
then
	echo "No such VM $1"
	exit 1
fi

# VM must be running.
if (($(virsh --connect qemu:///system list --inactive \
	| grep "\<$1\>" | wc -l))); then
	echo "VM $1 is not running."
	exit 1
fi

# Validate snapshot name.
virsh --connect qemu:///system snapshot-info $1 $2 2>&1 > /dev/null

# Must be an external snapshot.
if [[ $(virsh --connect qemu:///system snapshot-dumpxml $1 $2 \
		| xmlstarlet select -t -v \
		"/domainsnapshot/disks/disk[@name='vda']/@snapshot" -n) \
		!= "external" ]]; then
	echo "$2 is not an external snapshot."
	exit 1
fi

echo "Deleting snapshot $2 for VM $1"

tmp_snapshot=$(virsh --connect qemu:///system snapshot-list $1 --current --tree)

# Determine if there is a child of $2 to take care of.
while [[ $tmp_snapshot != "-" ]]; do
	tmp_snapshot_parent=$(virsh --connect qemu:///system snapshot-info $1 \
		$tmp_snapshot | awk '$0 ~ /^Parent/ { print $2 }')
	if [[ $tmp_snapshot_parent == $2 ]]; then
		snapshot_child=$tmp_snapshot
		break
	fi
	tmp_snapshot=$tmp_snapshot_parent
done

# Get snapshot-to-delete source filename (A)
snapshot_file=$(virsh --connect qemu:///system snapshot-dumpxml $1 $2 \
	| xmlstarlet select -t -v \
	"/domainsnapshot/disks/disk[@name='vda']/source/@file" -n)

# Get parent driver type (B)
snapshot_parent_driver_type=$(virsh --connect qemu:///system snapshot-dumpxml \
	$1 $2 \
	| xmlstarlet select -t -v \
	"/domainsnapshot/domain/devices/disk[@type='file' and @device='disk']/driver/@type" -n)

# Get parent backing store (C)
snapshot_parent_file=$(virsh --connect qemu:///system snapshot-dumpxml $1 $2 \
	| xmlstarlet select -t -v \
	"/domainsnapshot/domain/devices/disk[@type='file' and @device='disk']/source/@file" -n)

# Get snapshot child source filename (D)
if [[ -n "$snapshot_child" ]]; then
	snapshot_child_file=$(virsh --connect qemu:///system snapshot-dumpxml \
		$1 $snapshot_child \
		| xmlstarlet select -t -v \
		"/domainsnapshot/disks/disk[@name='vda']/source/@file" -n)
fi

# Commit the snapshot file (A) to it's backing store.
if [[ -n "$snapshot_child" ]]; then
	virsh --connect qemu:///system blockcommit $1 vda --shallow --top $snapshot_file \
		--wait --verbose
else
	virsh --connect qemu:///system blockcommit $1 vda --shallow --top $snapshot_file \
		--wait --verbose --pivot
fi

# Remove the snap2del file.
rm -f $snapshot_file

# If child exists then in child
#	replace parents driver type; qcow2, raw etc with B
#	replace parents backing store with C
# else no child so in domain xml
#	replace driver type; qcow2, raw etc with B
#	replace backing store with C
tmpdumpxmlfile=/tmp/$$.$(basename $0).xml
if [[ -n "$snapshot_child" ]]; then
	virsh --connect qemu:///system snapshot-dumpxml $1 $snapshot_child \
		> $tmpdumpxmlfile
	xmlstarlet edit -L -u \
		"/domainsnapshot/domain/devices/disk[@type='file' and @device='disk']/driver/@type" \
		-v $snapshot_parent_driver_type $tmpdumpxmlfile
	xmlstarlet edit -L -u \
		"/domainsnapshot/domain/devices/disk[@type='file' and @device='disk']/source/@file" \
		-v $snapshot_parent_file $tmpdumpxmlfile
	virsh --connect qemu:///system snapshot-create $1 $tmpdumpxmlfile \
		--redefine
else
	virsh --connect qemu:///system dumpxml --inactive --security-info $1 \
		> $tmpdumpxmlfile
	xmlstarlet edit -L -u \
		"/domain/devices/disk[@type='file' and @device='disk']/driver/@type" \
		-v $snapshot_parent_driver_type $tmpdumpxmlfile
	xmlstarlet edit -L -u \
		"/domain/devices/disk[@type='file' and @device='disk']/source/@file" \
		-v $snapshot_parent_file $tmpdumpxmlfile
	virsh --connect qemu:///system define $tmpdumpxmlfile
fi

rm $tmpdumpxmlfile

# Now finally remove the snapshot in virsh.
virsh --connect qemu:///system snapshot-delete $1 $2 --metadata

exit 0

