#!/bin/bash


pushd /sources/12.3
	rm -f Python-3.13.2
	tar xf Python-3.13.2.tar.xz
	cd Python-3.13.2
	./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
	make
	make install
popd
