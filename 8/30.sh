#!/bin/bash


pushd /sources/12.3
        rm -rf psmisc-23.7
        tar xf psmisc-23.7.tar.xz
        cd psmisc-23.7
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

