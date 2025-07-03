#!/bin/bash

export LFS=/mnt/lfs

pushd $LFS/sources/12.3
        rm -f sed-4.9
        tar xf sed-4.9.tar.xz
        cd sed-4.9
	./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
	make
	make DESTDIR=$LFS install
popd

