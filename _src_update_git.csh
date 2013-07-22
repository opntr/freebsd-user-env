#!/bin/csh

set K_SOURCE="/usr/data/source/git/freebsd-base.git.mirror/"

cd $K_SOURCE

echo "----------------------------------- 9-STABLE -----------------------------------"
set old_revision="`git rev-list HEAD -1`"
git fetch
set new_revision="`git rev-list HEAD -1`"

if ( "$old_revision" != "$new_revision" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/src
	git pull
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
endif

echo "--------------------------------------------------------------------------------"

