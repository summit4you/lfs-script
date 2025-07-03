#!/bin/bash


pushd /sources/12.3
        rm -rf tar-1.35
        tar xf tar-1.35.tar.xz
        cd tar-1.35
	FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr
	make
	make check
	make install
make -C doc install-html docdir=/usr/share/doc/tar-1.35
popd

