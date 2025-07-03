#!/bin/bash


pushd /sources/12.3
        rm -rf gdbm-1.24
        tar xf gdbm-1.24.tar.gz
        cd gdbm-1.24
	./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
	make
	make check
	make  install
popd

