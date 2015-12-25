#!/bin/csh

set OSRELDATE=`sysctl -n kern.osreldate`
@ _OSREL = $OSRELDATE / 100000
set K_VERSION="$_OSREL-STABLE"
set K_SOURCE="/usr/data/source/git/HardenedBSD-stable.git.http.mirror"

if ( ! -e ${K_SOURCE} ) then
	mkdir -p "/usr/data/source/git/"
	cd "/usr/data/source/git/"
	git clone --mirror "http://github.com/HardenedBSD/hardenedBSD-stable.git" HardenedBSD-stable.git.http.mirror
endif

cd ${K_SOURCE}

echo "---------------------------------- $K_VERSION -----------------------------------"
set old_revision="`git rev-list hardened/${_OSREL}-stable/master -1`"
git fetch
set new_revision="`git rev-list hardened/${_OSREL}-stable/master -1`"

if ( "${old_revision}" != "${new_revision}" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/src
	git checkout hardened/${_OSREL}-stable/master
	git pull
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
endif

echo "--------------------------------------------------------------------------------"

