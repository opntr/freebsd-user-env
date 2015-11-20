#!/bin/csh

mergemaster -iFp && make installworld && mergemaster -iF && make delete-old && make delete-old-libs
