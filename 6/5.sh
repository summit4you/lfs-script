#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f diffutils-3.11 
        tar xf diffutils-3.11.tar.xz
        cd diffutils-3.11
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

