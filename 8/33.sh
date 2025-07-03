#!/bin/bash


pushd /sources/12.3
        rm -rf grep-3.11
        tar xf grep-3.11.tar.xz
        cd grep-3.11
	sed -i "s/echo/#echo/" src/egrep.sh
	./configure --prefix=/usr
	make
	make check
	make  install
popd

