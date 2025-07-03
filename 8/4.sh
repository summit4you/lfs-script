#!/bin/bash


pushd /sources/12.3
        rm -rf zlib-1.3.1
        tar xf zlib-1.3.1.tar.gz
        cd zlib-1.3.1
	./configure --prefix=/usr   
	make
	make check
	make  install
	rm -fv /usr/lib/libz.a
popd

