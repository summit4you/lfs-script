#!/bin/bash


pushd /sources/12.3
        rm -rf acl-2.3.2
        tar xf acl-2.3.2.tar.xz
        cd acl-2.3.2
	./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.2
	make
	make check
	make  install
popd

