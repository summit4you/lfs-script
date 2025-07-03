#!/bin/bash


pushd /sources/12.3
        rm -rf libpipeline-1.5.8
        tar xf libpipeline-1.5.8.tar.gz
        cd libpipeline-1.5.8
	./configure --prefix=/usr   
	make
	make check
	make  install
popd

