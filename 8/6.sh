#!/bin/bash


pushd /sources/12.3
        rm -rf xz-5.6.4
        tar xf xz-5.6.4.tar.gz
        cd xz-5.6.4
	./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/xz-5.6.4
	make
	make check
	make  install
popd

