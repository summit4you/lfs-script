#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f grep-3.11
        tar xf grep-3.11.tar.xz
        cd grep-3.11
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

