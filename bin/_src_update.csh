#!/bin/csh

set OSRELDATE=`sysctl -n kern.osreldate`
@ _OSREL = $OSRELDATE / 100000
set K_VERSION="$_OSREL-STABLE"
set K_SOURCE="/usr/data/source/git/opBSD.git.http.mirror"

if ( ! -e ${K_SOURCE} ) then
	mkdir -p "/usr/data/source/git/"
	cd "/usr/data/source/git/"
	git clone --progress --mirror "http://github.com/opntr/opBSD.git" opBSD.git.http.mirror
endif

cd ${K_SOURCE}

echo "---------------------------------- $K_VERSION -----------------------------------"
set old_revision="`git rev-list opbsd/${_OSREL}-stable/master -1`"
git fetch
set new_revision="`git rev-list opbsd/${_OSREL}-stable/master -1`"

if ( "${old_revision}" != "${new_revision}" ) then
	echo "--------------------------------------------------------------------------------"
	cd /usr/src
	git checkout opbsd/${_OSREL}-stable/master
	git pull --rebase
	git tag snapshot-`date "+%Y%m%d%H%M%S"`
endif

echo "--------------------------------------------------------------------------------"

