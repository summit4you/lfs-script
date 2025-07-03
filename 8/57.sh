#!/bin/bash


pushd /sources/12.3
        rm -rf check-0.15.2
        tar xf check-0.15.2.tar.gz
        cd check-0.15.2
	./configure --prefix=/usr  --disable-static   
	make
	make check
	make docdir=/usr/share/doc/check-0.15.2 install
popd

