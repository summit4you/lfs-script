#!/bin/bash


pushd /sources/12.3
        rm -rf automake-1.17
        tar xf automake-1.17.tar.xz
        cd automake-1.17
	./configure --prefix=/usr  --docdir=/usr/share/doc/automake-1.17 
	make
	make -j$(($(nproc)>4?$(nproc):4)) check
	make  install
popd

