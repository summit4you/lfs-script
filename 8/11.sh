#!/bin/bash


pushd /sources/12.3
        rm -rf m4-1.4.19
        tar xf m4-1.4.19.tar.gz
        cd m4-1.4.19
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

