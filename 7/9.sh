#!/bin/bash


pushd /sources/12.3
	rm -f texinfo-7.2
	tar xf texinfo-7.2.tar.xz
	cd texinfo-7.2
	./configure --prefix=/usr
	make
	make install
popd
