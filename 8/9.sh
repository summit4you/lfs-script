#!/bin/bash


pushd /sources/12.3
        rm -rf file-5.46
        tar xf file-5.46.tar.gz
        cd file-5.46
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

