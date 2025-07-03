#!/bin/bash


pushd /sources/12.3
        rm -rf autoconf-2.72
        tar xf autoconf-2.72.tar.xz
        cd autoconf-2.72
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

