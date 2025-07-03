#!/bin/bash


pushd /sources/12.3
        rm -rf bison-3.8.2
        tar xf bison-3.8.2.tar.xz
        cd bison-3.8.2
	./configure --prefix=/usr --docdir=/usr/share/doc/bison-3.8.2
	make
	make check
	make  install
popd

