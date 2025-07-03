#!/bin/bash


pushd /sources/12.3
        rm -rf patch-2.7.6
        tar xf patch-2.7.6.tar.xz
        cd patch-2.7.6
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

