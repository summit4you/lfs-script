#!/bin/bash


pushd /sources/12.3
        rm -rf diffutils-3.11
        tar xf diffutils-3.11.tar.xz
        cd diffutils-3.11
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

