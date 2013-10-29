#!/bin/csh

# git://git.freebsd.org/freebsd-ports.git

set P_DIR="freebsd-ports"
set P_SOURCE="/usr/data/source/git/$P_DIR.git.http"

cd $P_SOURCE

echo "------------------------------------  PORTS   ----------------------------------"
set old_revision="`git rev-list HEAD -1`"
git pull
set new_revision="`git rev-list HEAD -1`"

if ( "$old_revision" != "$new_revision" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/ports
	git pull
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
endif

echo "--------------------------------------------------------------------------------"

