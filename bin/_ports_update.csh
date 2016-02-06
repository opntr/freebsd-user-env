#!/bin/csh

# git://git.freebsd.org/freebsd-ports.git

set P_DIR="freebsd-ports"
set P_SOURCE="/usr/data/source/git/$P_DIR.git.http"

cd $P_SOURCE

echo "------------------------------------  PORTS   ----------------------------------"
set old_revision="`git rev-list HEAD -1`"
(git pull) |& less
set new_revision="`git rev-list HEAD -1`"

if ( "$old_revision" != "$new_revision" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/ports
	(git pull) |& less
	echo -n "enter shell[enter] to get fix issues: "
	set input=$<
	if ( "$input" == "shell" ) then
		/bin/tcsh
	endif
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
	make index
else
	exit 0
endif

echo "--------------------------------------------------------------------------------"

