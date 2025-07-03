#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f tar-1.35
        tar xf tar-1.35.tar.xz
        cd tar-1.35
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

