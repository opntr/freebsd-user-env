#!/bin/csh

set running_kernel_version=`uname -a | sed 's/\(.* \)\(.*(.*)\)\(.*\)/\2/' | tr '()' '  '`
set rkv_git=`echo $running_kernel_version | cut -d ' ' -f 1`
set rkv_branch=`echo $running_kernel_version | cut -d ' ' -f 2`

cd /usr/src
git log -p --stat --color $rkv_git..$rkv_branch
