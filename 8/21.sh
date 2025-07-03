#!/bin/bash


pushd /sources/12.3
        rm -rf mpc-1.3.1
        tar xf mpc-1.3.1.tar.gz
        cd mpc-1.3.1
	./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/mpc-1.3.1
	make
	make html
	make check
	make  install
	make install-html
popd

