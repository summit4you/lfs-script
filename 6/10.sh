#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f gzip-1.13
        tar xf gzip-1.13.tar.xz
        cd gzip-1.13
	./configure --prefix=/usr --host=$LFS_TGT
	make
	make DESTDIR=$LFS install
popd

