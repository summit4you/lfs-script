#!/bin/bash


pushd /sources/12.3
        rm -rf gzip-1.13
        tar xf gzip-1.13.tar.xz
        cd gzip-1.13
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

