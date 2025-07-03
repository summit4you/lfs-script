#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f patch-2.7.6
        tar xf patch-2.7.6.tar.xz
        cd patch-2.7.6
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

