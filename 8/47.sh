#!/bin/bash


pushd /sources/12.3
        rm -rf elfutils-0.192
        tar xf elfutils-0.192.tar.bz2
        cd elfutils-0.192
	./configure --prefix=/usr                \
            --disable-debuginfod         \
            --enable-libdebuginfod=dummy
	make
	make check
	make -C libelf install
install -vm644 config/libelf.pc /usr/lib/pkgconfig
rm /usr/lib/libelf.a
popd

