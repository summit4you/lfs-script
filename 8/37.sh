#!/bin/bash


pushd /sources/12.3
        rm -rf gperf-3.1
        tar xf gperf-3.1.tar.gz
        cd gperf-3.1
	./configure --prefix=/usr --docdir=/usr/share/doc/gperf-3.1
	make
	make -j1 check
	make  install
popd

