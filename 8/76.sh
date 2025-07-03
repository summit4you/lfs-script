#!/bin/bash


pushd /sources/12.3
        rm -rf man-db-2.13.0
        tar xf man-db-2.13.0.tar.xz
        cd man-db-2.13.0
	./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/man-db-2.13.0 \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap
	make
	make check
	make  install
popd

