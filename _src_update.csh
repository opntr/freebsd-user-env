#!/bin/csh

set OSRELDATE=`sysctl -n kern.osreldate`
@ _OSREL = $OSRELDATE / 100000
set K_VERSION="$_OSREL-STABLE"
set K_SOURCE="/usr/data/source/git/freebsd-base.git.http.mirror"

cd $K_SOURCE

echo "---------------------------------- $K_VERSION -----------------------------------"
set old_revision="`git rev-list stable/$_OSREL -1`"
git fetch
set new_revision="`git rev-list stable/$_OSREL -1`"

if ( "$old_revision" != "$new_revision" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/src
	git pull
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
endif

echo "--------------------------------------------------------------------------------"

