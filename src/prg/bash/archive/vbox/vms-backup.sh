#! /usr/bin/env bash

set -e

readonly machines="Pericles Leonidas Cleomenes Minerva"
declare -i readonly max_conc_vms=1


if (( $# != 0 )); then
	echo "Script does not take any arguments."
	exit 1
fi

for machine in $machines; do
	while (( $(VBoxManage list runningvms | wc -l) >= max_conc_vms)); do
		sleep 45
	done
	vm-start-headless.sh $machine
	sleep 120
done

