#!/bin/csh

set OSRELDATE=`sysctl -n kern.osreldate`
@ _OSREL = $OSRELDATE / 100000
set K_VERSION="$_OSREL-STABLE"
set K_SOURCE="/usr/data/source/git/$K_VERSION.git"

cd $K_SOURCE

echo "----------------------------------- $K_VERSION -----------------------------------"
set old_revision="`git rev-list HEAD -1`"
git svn rebase
set new_revision="`git rev-list HEAD -1`"

if ( "$old_revision" != "$new_revision" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/src
	git pull
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
endif

echo "--------------------------------------------------------------------------------"

