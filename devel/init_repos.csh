#!/bin/csh

set SRC_DIR="/tmp/usr/data/source/git"

mkdir -p $SRC_DIR
cd $SRC_DIR

git clone --mirror git://git-beta.freebsd.org/freebsd-base.git freebsd-base.git.mirror
git clone --mirror git://git-beta.freebsd.org/freebsd-ports.git freebsd-ports.git.mirror
git clone --mirror git://github.com/opntr/freebsd-user-env.git freebsd-user-env.git.mirror
git clone --mirror git://github.com/opntr/freebsd-patches-2013-tavasz.git freebsd-patches-2013-tavasz.git.mirror
git clone --mirror git://github.com/opntr/paxtest-freebsd.git paxtest-freebsd.git.mirror

