#!/bin/bash


pushd /sources/12.3
        rm -rf less-668
        tar xf less-668.tar.gz
        cd less-668
	./configure --prefix=/usr  --sysconfdir=/etc 
	make
	make check
	make  install
popd

