#!/bin/bash


pushd /sources/12.3
        rm -rf groff-1.23.0
        tar xf groff-1.23.0.tar.gz
        cd groff-1.23.0
	PAGE=A4 ./configure --prefix=/usr
	make
	make check
	make  install
popd

