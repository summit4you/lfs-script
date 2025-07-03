#!/bin/bash


pushd /sources/12.3
        rm -rf libcap-2.73
        tar xf libcap-2.73.tar.xz
        cd libcap-2.73
	sed -i '/install -m.*STA/d' libcap/Makefile
	make prefix=/usr lib=lib
	make test
	make prefix=/usr lib=lib install
popd

