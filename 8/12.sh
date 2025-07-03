#!/bin/bash


pushd /sources/12.3
        rm -rf bc-7.0.3
        tar xf bc-7.0.3.tar.xz
        cd bc-7.0.3
	CC=gcc ./configure --prefix=/usr -G -O3 -r
	make
	make test
	make  install
popd

