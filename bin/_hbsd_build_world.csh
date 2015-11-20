#!/bin/csh

(cd /usr/src; make -j$__freebsd_mk_jobs buildworld  kernel) |& tee ~/cc-log-`date "+%Y%m%d%H%M%S"`
