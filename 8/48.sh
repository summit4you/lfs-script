#!/bin/bash


pushd /sources/12.3
        rm -rf libffi-3.4.7
        tar xf libffi-3.4.7.tar.gz
        cd libffi-3.4.7
	./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
	make
	make check
	make  install
popd

