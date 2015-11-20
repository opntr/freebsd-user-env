#!/bin/csh

(cd /usr/src; make -j$__freebsd_mk_jobs kernel) |& tee ~/cc-log-`date "+%Y%m%d%H%M%S"`
