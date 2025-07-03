#!/bin/bash


pushd /sources/12.3
        rm -rf zstd-1.5.7
        tar xf zstd-1.5.7.tar.gz
        cd zstd-1.5.7
	make prefix=/usr
	make check
	make prefix=/usr install
	rm -v /usr/lib/libzstd.a
popd

