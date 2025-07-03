#!/bin/bash


pushd /sources/12.3
        rm -rf gettext-0.24
        tar xf gettext-0.24.tar.xz
        cd gettext-0.24
	./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/gettext-0.24
	make
	make check
	make  install
	chmod -v 0755 /usr/lib/preloadable_libintl.so
popd

