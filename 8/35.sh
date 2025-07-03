#!/bin/bash


pushd /sources/12.3
        rm -rf libtool-2.5.4
        tar xf libtool-2.5.4.tar.xz
        cd libtool-2.5.4
	./configure --prefix=/usr   
	make
	make check
	make  install
	rm -fv /usr/lib/libltdl.a
popd

